import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:neutri_lens/app/modules/auth/data/models/profile_model/profile_model.dart';
import 'package:neutri_lens/app/modules/profile/domain/usecases/update_user_usecase.dart';
import '../../../../core/services/session_manager.dart';
import '../../../../core/utils/apptoast_util.dart';

class ProfileController extends GetxController {
  final UpdateUserProfileUsecase updateUserUsecase;
  ProfileController({required this.updateUserUsecase});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final selectedAge = 0.obs;
  final userName = ''.obs;

  // Static Data
  final List<String> agesList = [
    "13-17",
    "18-24",
    "25-34",
    "35-44",
    "45-54",
    "55-64",
    "65+",
  ];

  @override
  void onInit() {
    super.onInit();

    final user = SessionController().getUserDetails;
    userName.value = user.fullName ?? '';
    nameController.text = user.fullName ?? '';

    final userAge = user.ageFrom?.toString() ?? '';
    final index = agesList.indexWhere((age) => age.contains(userAge));
    selectedAge.value = index != -1 ? index : 0;
    emailController.text = user.username ?? '';
  }

  var isLoading = false.obs;
  Future updateProfile() async {
    isLoading.value = true;
    List<DietPreference> goals = SessionController().getUserDetails.goals!
        .map((e) => DietPreference(id: e))
        .toList();
    List<DietPreference> diets = SessionController()
        .getUserDetails
        .dietPreferences!
        .map((e) => DietPreference(id: e))
        .toList();

    final response = await updateUserUsecase.call(
      ProfileModel(
        fullName: nameController.text.trim(),
        ageFrom: int.tryParse(agesList[selectedAge.value].split('-')[0]) ?? 0,
        ageTo:
            int.tryParse(
              agesList[selectedAge.value].split('-')[1].replaceAll('+', ''),
            ) ??
            0,
        goals: goals,
        dietPreferences: diets,
      ),
    );
    response.fold(
      (failure) {
        isLoading.value = false;
        AppToasts.showErrorToast(Get.context!, failure.toString());
      },
      (user) async {
        await SessionController().saveUserInStorage(user);
        await SessionController().getUserfromSharedpref();
        AppToasts.showSuccessToast(Get.context!, "Profile Updated");
        isLoading.value = false;
        userName.value = user.fullName ?? '';
        update();
      },
    );
  }
}

import 'package:get/get.dart';
import 'package:neutri_lens/app/core/services/session_manager.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/get_goals_and_pref_usecase.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/usecase.dart';
import '../../../../core/utils/apptoast_util.dart';
import '../../../../core/shared/data/models/get_goals_diet_list/get_goals_diet_list.dart';
import '../../../auth/data/models/profile_model/profile_model.dart' as profile;
import '../../../profile/domain/usecases/update_user_usecase.dart';

class SettingsController extends GetxController {
  final RxBool isEdit = false.obs;
  final GetGoalsAndPrefUsecase getGoalsAndPrefUsecase;
  final UpdateUserProfileUsecase updateUserUsecase;
  SettingsController({
    required this.updateUserUsecase,
    required this.getGoalsAndPrefUsecase,
  });

  final goals = <DietPreference>[].obs;
  final selectedGoalsIds = <int>[].obs; // ✅ Changed from selectedGoalsIndex
  final allergensToAvoid = <DietPreference>[].obs;
  final selectedAllergenIds = <int>[].obs; // ✅ Changed from selectedAllergens
  final isLoading = false.obs;

  getGoalsAndDietList() async {
    final response = await getGoalsAndPrefUsecase.call(NoParams());
    response.fold((failure) {}, (goalsAndDietList) {
      goals.value = goalsAndDietList.goals ?? [];
      allergensToAvoid.value = goalsAndDietList.dietPreferences ?? [];
    });
  }

  @override
  void onInit() {
    super.onInit();
    getGoalsAndDietList();
    final userDetails = SessionController().getUserDetails;

    // ✅ These should already be IDs from the backend, not indexes
    selectedGoalsIds.value = List<int>.from(userDetails.goals ?? []);
    selectedAllergenIds.value = List<int>.from(
      userDetails.dietPreferences ?? [],
    );

    // Debug: Print what we're loading
    print("📥 Loading user goals IDs: ${selectedGoalsIds}");
    print("📥 Loading user preference IDs: ${selectedAllergenIds}");
  }

  Future updateProfile() async {
    isLoading.value = true;

    // ✅ Use the actual IDs (not indexes)
    List<profile.DietPreference>? updategoals = selectedGoalsIds
        .where((id) => id != 0) // ✅ Filter out invalid IDs
        .map((id) => profile.DietPreference(id: id))
        .toList();

    List<profile.DietPreference>? updatediets = selectedAllergenIds
        .where((id) => id != 0) // ✅ Filter out invalid IDs
        .map((id) => profile.DietPreference(id: id))
        .toList();

    // Debug: Print what we're sending
    print("📤 Sending goals IDs: ${updategoals.map((g) => g.id).toList()}");
    print(
      "📤 Sending preference IDs: ${updatediets.map((d) => d.id).toList()}",
    );

    final response = await updateUserUsecase.call(
      profile.ProfileModel(
        fullName: SessionController().getUserDetails.fullName ?? '',
        ageFrom: SessionController().getUserDetails.ageFrom ?? 0,
        ageTo: SessionController().getUserDetails.ageTo ?? 0,
        goals: updategoals,
        dietPreferences: updatediets,
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
        update();
      },
    );
  }

  // ✅ Helper methods to add/remove IDs (not indexes)
  void toggleGoal(int goalId) {
    if (selectedGoalsIds.contains(goalId)) {
      selectedGoalsIds.remove(goalId);
    } else {
      selectedGoalsIds.add(goalId);
    }
  }

  void toggleAllergen(int allergenId) {
    if (selectedAllergenIds.contains(allergenId)) {
      selectedAllergenIds.remove(allergenId);
    } else {
      selectedAllergenIds.add(allergenId);
    }
  }
}

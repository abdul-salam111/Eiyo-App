import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:neutri_lens/app/core/core.dart';
import 'package:neutri_lens/app/core/shared/data/models/get_goals_diet_list/get_goals_diet_list.dart';
import 'package:neutri_lens/app/modules/auth/data/models/user_model/user_model.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/get_goals_and_pref_usecase.dart';
import 'package:neutri_lens/app/modules/auth/domain/usecases/signup_user_usecase.dart';
import '../../../../../core/shared/domain/usecase/usecase.dart';
import '../../../../../routes/app_pages.dart';

class SignupController extends GetxController {
  // ---------------------------------------------------------------------------
  // 🧩 Dependencies
  // ---------------------------------------------------------------------------
  final SignupUserUsecase signupUserUsecase;
  final GetGoalsAndPrefUsecase getGoalsAndPrefUsecase;

  SignupController({
    required this.signupUserUsecase,
    required this.getGoalsAndPrefUsecase,
  });

  // ---------------------------------------------------------------------------
  // 📝 Form & Controllers
  // ---------------------------------------------------------------------------
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final pageController = PageController();

  // ---------------------------------------------------------------------------
  // ⚙️ Observable States
  // ---------------------------------------------------------------------------
  final isLoading = false.obs;
  final isRegisteringUser = false.obs;
  final currentIndex = 0.obs;
  final selectedAge = 1.obs;

  // ---------------------------------------------------------------------------
  // 🥗 Goals & Diet Preferences
  // ---------------------------------------------------------------------------
  final goals = <DietPreference>[].obs;
  final selectedGoalsIndex = <int>[].obs;

  final allergensToAvoid = <DietPreference>[].obs;
  final selectedAllergens = <int>[].obs;

  // ---------------------------------------------------------------------------
  // 📊 Static Data
  // ---------------------------------------------------------------------------
  final List<String> agesList = [
    "13-17",
    "18-24",
    "25-34",
    "35-44",
    "45-54",
    "55-64",
    "65+",
  ];

  // ---------------------------------------------------------------------------
  // 🚀 Lifecycle
  // ---------------------------------------------------------------------------
  @override
  void onInit() {
    super.onInit();
    getGoalsAndDietList();
  }

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    pageController.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------------------
  // 🔄 Data Loading
  // ---------------------------------------------------------------------------
  Future<void> getGoalsAndDietList() async {
    isLoading.value = true;

    final response = await getGoalsAndPrefUsecase.call(NoParams());

    response.fold(
      (failure) {
        isLoading.value = false;
        AppToasts.showErrorToast(Get.context!, failure.toString());
      },
      (goalsAndDietList) {
        isLoading.value = false;
        goals.value = goalsAndDietList.goals ?? [];
        allergensToAvoid.value = goalsAndDietList.dietPreferences ?? [];
      },
    );
  }

  // ---------------------------------------------------------------------------
  // 🔘 Selection Logic
  // ---------------------------------------------------------------------------
  void toggleSelection(String item, RxList<String> list) {
    list.contains(item) ? list.remove(item) : list.add(item);
  }

  // ---------------------------------------------------------------------------
  // 👤 User Registration
  // ---------------------------------------------------------------------------
  Future<void> registerUser() async {
    isRegisteringUser.value = true;

    // Extract selected age range
    final ageRange = agesList[selectedAge.value].split("-");
    final ageFrom = int.tryParse(ageRange[0]) ?? 0;
    final ageTo = ageRange.length > 1
        ? int.tryParse(ageRange[1].replaceAll('+', '')) ?? 0
        : ageFrom;

    // Call Usecase
    final response = await signupUserUsecase.call(
      UserModel(
        username: emailController.text.trim(),
        fullName: nameController.text.trim(),
        password: passwordController.text.trim(),
        ageFrom: ageFrom,
        ageTo: ageTo,
        goals: selectedGoalsIndex,
        dietPreferences: selectedAllergens,
      ),
    );

    // Handle Response
    response.fold(
      (failure) {
        isRegisteringUser.value = false;
        AppToasts.showErrorToast(Get.context!, failure.toString());
      },
      (_) async {
        isRegisteringUser.value = false;
        Get.offAllNamed(Routes.SIGNIN);
        AppToasts.showSuccessToast(Get.context!, "Registration successful");
      },
    );
  }
}

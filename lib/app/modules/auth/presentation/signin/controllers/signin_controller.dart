import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neutri_lens/app/core/data/local_data/secure_storage/storage.dart';
import 'package:neutri_lens/app/core/services/session_manager.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/usecase.dart';
import 'package:neutri_lens/app/routes/app_pages.dart';
import 'package:neutri_lens/app/core/utils/apptoast_util.dart';
import '../../../domain/usecases/get_loggedin_user_usecase.dart';
import '../../../domain/usecases/login_user_usecase.dart';

/// Controller responsible for handling user sign-in logic.
///
/// Follows the Clean Architecture pattern — interacts with
/// the domain layer through use cases and manages view state.
class SigninController extends GetxController {
  // --------------------------------------------------------------------------
  // Dependencies
  // --------------------------------------------------------------------------
  final LoginUserUseCase loginUserUseCase;
  final GetLoggedInUserUseCase getUserUseCase;

  SigninController({
    required this.loginUserUseCase,
    required this.getUserUseCase,
  });

  // --------------------------------------------------------------------------
  // Reactive Variables
  // --------------------------------------------------------------------------
  final rememberMe = false.obs;
  final isLoading = false.obs;

  // --------------------------------------------------------------------------
  // Form and Text Controllers
  // --------------------------------------------------------------------------
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // --------------------------------------------------------------------------
  // Public Methods
  // --------------------------------------------------------------------------

  /// Handles user login process:
  /// 1. Calls login use case.
  /// 2. Stores token in secure storage.
  /// 3. Fetches user details.
  /// 4. Navigates to the main dashboard.
  Future<void> login() async {
    isLoading.value = true;

    final response = await loginUserUseCase.call(
      LoginParams(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );

    response.fold(
      (failure) {
        isLoading.value = false;
        AppToasts.showErrorToast(Get.context!, failure.toString());
      },
      (token) async {
        await storage.setValues(StorageKeys.token, token);
        await _fetchUserDetails();
      },
    );
  }

  // --------------------------------------------------------------------------
  // Private Helpers
  // --------------------------------------------------------------------------

  /// Fetches the logged-in user's details after successful login.
  Future<void> _fetchUserDetails() async {
    final response = await getUserUseCase.call(NoParams());

    response.fold(
      (failure) {
        isLoading.value = false;
        AppToasts.showErrorToast(Get.context!, failure.toString());
      },
      (user) async {
        await SessionController().saveUserInStorage(user);
        await SessionController().getUserfromSharedpref();

        await storage.setValues(
          StorageKeys.password,
          passwordController.text.trim(),
        );

        isLoading.value = false;
        await Get.offAllNamed(Routes.NAVBAR);
      },
    );
  }

  // --------------------------------------------------------------------------
  // Lifecycle
  // --------------------------------------------------------------------------
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}

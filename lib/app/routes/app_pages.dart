import 'package:get/get.dart';

import '../modules/auth/presentation/signin/bindings/signin_binding.dart';
import '../modules/auth/presentation/signin/views/signin_view.dart';
import '../modules/auth/presentation/signup/bindings/signup_binding.dart';
import '../modules/auth/presentation/signup/views/signup_view.dart';
import '../modules/home/presentation/bindings/home_binding.dart';
import '../modules/home/presentation/views/home_view.dart';
import '../modules/navbar/presentation/bindings/navbar_binding.dart';
import '../modules/navbar/presentation/views/navbar_view.dart';
import '../modules/profile/presentation/bindings/profile_binding.dart';
import '../modules/profile/presentation/views/profile_view.dart';
import '../modules/result/presentation/bindings/result_binding.dart';
import '../modules/result/presentation/views/result_view.dart';
import '../modules/settings/presentation/bindings/settings_binding.dart';
import '../modules/settings/presentation/views/settings_view.dart';
import '../modules/splash_and_onboarding/onboarding/bindings/onboarding_binding.dart';
import '../modules/splash_and_onboarding/onboarding/views/onboarding_view.dart';
import '../modules/splash_and_onboarding/splash/presentation/bindings/splash_binding.dart';
import '../modules/splash_and_onboarding/splash/presentation/views/splash_view.dart';
import '../modules/trends/presentation/bindings/trends_binding.dart';
import '../modules/trends/presentation/views/trends_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),

    GetPage(
      name: _Paths.TRENDS,
      page: () => const TrendsView(),
      binding: TrendsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.RESULT,
      page: () => const ResultView(),
      binding: ResultBinding(),
    ),
  ];
}

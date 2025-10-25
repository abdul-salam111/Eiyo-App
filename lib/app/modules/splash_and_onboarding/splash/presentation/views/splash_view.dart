import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:neutri_lens/app/core/core.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: ThemeService.getThemedColor(
        lightColor: AppColors.appPrimaryColor,
        darkColor: AppColors.appPrimaryColor,
      ),
      body: Center(
        child: Image.asset(AppImages.appLogo, height: 130, width: 130),
      ),
    );
  }
}

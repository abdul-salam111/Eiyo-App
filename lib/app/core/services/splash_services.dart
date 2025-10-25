import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:neutri_lens/app/core/data/local_data/secure_storage/storage.dart';
import 'package:neutri_lens/app/core/services/session_manager.dart';

import '../../routes/app_pages.dart';

class SplashServices {
  Future<void> isLoggedIn() async {
    await checkLoginStatus();
  }

  Future<void> checkLoginStatus() async {
    try {
      await SessionController().getUserfromSharedpref();
      await Future.delayed(Duration(seconds: 2));
      if (SessionController().islogin == true) {
        Get.offAllNamed(Routes.NAVBAR);
      } else {
        if (await storage.readValues('onboarding') == 'true') {
          Get.offAllNamed(Routes.SIGNIN);
        } else {
          Get.offAllNamed(Routes.ONBOARDING);
        }
      }
    } catch (e) {
      debugPrint('Error in checkLoginStatus: $e');
    }
  }
}

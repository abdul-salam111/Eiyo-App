import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../../core/services/splash_services.dart';

class SplashController extends GetxController {
  final SplashServices _splashServices = SplashServices();

  void checkLoginStatus() async {
    await _splashServices.checkLoginStatus();
  }

  @override
  void onInit() {
    super.onInit();
    checkLoginStatus();
  }
}

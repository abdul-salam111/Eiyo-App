import 'package:get/get.dart';
import 'package:neutri_lens/app/modules/profile/presentation/bindings/profile_binding.dart';
import 'package:neutri_lens/app/modules/result/presentation/bindings/result_binding.dart';
import '../../../home/presentation/bindings/home_binding.dart';
import '../../../settings/presentation/bindings/settings_binding.dart';
import '../../../trends/presentation/bindings/trends_binding.dart';
import '../controllers/navbar_controller.dart';

class NavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavbarController());
    HomeBinding().dependencies();
    SettingsBinding().dependencies();
    TrendsBinding().dependencies();
    ProfileBinding().dependencies();
    ResultBinding().dependencies();
  }
}

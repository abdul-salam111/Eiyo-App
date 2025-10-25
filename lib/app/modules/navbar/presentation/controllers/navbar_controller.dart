import 'package:get/get.dart';

class NavbarController extends GetxController {
 // current selected index
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}

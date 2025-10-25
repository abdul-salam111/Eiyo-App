import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  late List<FeatureDataclass> features;

  @override
  void onInit() {
    super.onInit();
    features = [
      FeatureDataclass(
        icons: 'assets/icons/feature_icon1.png',
        title: 'See What You Eat',
        subtitle: 'Point, scan, see the truth',
        color: Color(0xffE4FFED),
      ),
      FeatureDataclass(
        icons: 'assets/icons/feature_icon2.png',
        title: 'Instant insights',
        subtitle: 'Carbs, sugar, smart swaps',
        color: Color(0xffEEF3FF),
      ),
      FeatureDataclass(
        icons: 'assets/icons/feature_icon3.png',
        title: 'Positive encouragement',
        subtitle: 'Celebrate wins. Keep going',
        color: Color(0xffEEDDF8),
      ),
    ];
  }

   var isChecked = false.obs;
   
}

class FeatureDataclass {
  final String icons;
  final String title;
  final String subtitle;
  final Color color;

  FeatureDataclass({
    required this.icons,
    required this.title,
    required this.subtitle,
    required this.color,
  });
}

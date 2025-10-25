import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:neutri_lens/app/routes/app_pages.dart';

import '../../../../core/core.dart';
import '../../../../core/data/local_data/secure_storage/storage.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: GestureDetector(
          onTap: () async {
            await storage.setValues('onboarding', 'true');
            Get.toNamed(Routes.SIGNIN);
          },
          child: Container(
            height: 50,
            padding: screenPadding,
            margin: padding14,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.appPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: mainAxisSpaceBetween,

              children: [
                Text(
                  "Get Started",
                  style: context.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white.withAlpha(90),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: screenPadding,
            child: Column(
              children: [
                heightBox(context.screenHeight * 0.1),
                Image.asset(AppImages.blackappLogo, height: 100, width: 200),
                heightBox(context.screenHeight * 0.04),
                Center(
                  child: Text(
                    "Welcome to, Eiyo!",
                    style: context.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: textAlignCenter,
                  ),
                ),
                heightBox(5),
                Text(
                  "Smarter Food, Better Choices",
                  style: context.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGreyColor,
                  ),
                ),
                heightBox(context.screenHeight * 0.03),
                Padding(
                  padding: screenPadding,
                  child: Column(
                    children: List.generate(controller.features.length, (
                      index,
                    ) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: controller.features[index].color.withAlpha(
                              90,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  controller.features[index].icons,
                                  height: 30,
                                  width: 30,
                                ),
                                widthBox(20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.features[index].title,
                                      style: context.titleSmall!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    heightBox(5),
                                    Text(
                                      controller.features[index].subtitle,
                                      style: context.bodySmall!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Obx(
                  () => CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: RichText(
                      text: TextSpan(
                        style: context.bodyMedium,
                        children: [
                          const TextSpan(text: "I agree to the "),
                          TextSpan(
                            text: "Terms and Privacy Policy",
                            style: context.bodyMedium?.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                    value: controller.isChecked.value,
                    onChanged: (bool? value) {
                      controller.isChecked.value = value ?? false;
                    },
                  ),
                ),
                heightBox(context.screenHeight * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

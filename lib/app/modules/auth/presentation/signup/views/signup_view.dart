import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:neutri_lens/app/core/widgets/loading_indicator.dart';
import 'package:neutri_lens/app/core/widgets/loading_overlay.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/core.dart';
import '../../../../../core/widgets/custom_textfield.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LoadingOverlay(
        isLoading: controller.isRegisteringUser.value,
        child: Scaffold(
          bottomNavigationBar: SafeArea(
            child: GestureDetector(
              onTap: () async {
                // Different validation for each page
                if (controller.currentIndex.value == 0) {
                  // First page - validate form
                  if (controller.formKey.currentState!.validate()) {
                    controller.pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                } else if (controller.currentIndex.value == 1) {
                  // Second page - check goals only (no form validation)
                  if (controller.selectedGoalsIndex.isEmpty) {
                    AppToasts.showErrorToast(
                      Get.context!,
                      "Please select your goals",
                    );
                  } else {
                    controller.pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                } else if (controller.currentIndex.value == 2) {
                  // Third page - check allergens only (no form validation)
                  if (controller.selectedAllergens.isEmpty) {
                    AppToasts.showErrorToast(
                      Get.context!,
                      "Please select your diets",
                    );
                  } else {
                    await controller.registerUser();
                  }
                }
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
                    Obx(
                      () => Text(
                        controller.currentIndex.value == 2
                            ? "Create Account"
                            : "Next",
                        style: context.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
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
          appBar: AppBar(
            title: const Text('Create An Account'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              heightBox(context.screenHeight * 0.05),

              Padding(
                padding: screenPadding,
                child: Row(
                  mainAxisAlignment: mainAxisSpaceBetween,
                  children: [
                    Obx(
                      () => Text(
                        controller.currentIndex.value == 0
                            ? "Personal Information"
                            : controller.currentIndex.value == 1
                            ? "Goals"
                            : "Food Type",
                        style: context.displaySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Obx(
                      () => AnimatedSmoothIndicator(
                        activeIndex: controller.currentIndex.value,

                        count: 3,
                        effect: ExpandingDotsEffect(
                          dotHeight: 5,
                          dotWidth: 10,
                          dotColor: AppColors.darkGreyColor,
                          activeDotColor: AppColors.appPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              heightBox(context.screenHeight * 0.02),
              Expanded(
                child: PageView(
                  physics: neverscroll,
                  controller: controller.pageController,
                  onPageChanged: (value) {
                    controller.currentIndex.value = value;
                  },
                  children: [
                    UnfocusWrapper(
                      child: Padding(
                        padding: screenPadding,
                        child: ListView(
                          children: [
                            // GestureDetector(
                            //   onTap: () async {
                            //     controller.profileImage.value =
                            //         await ImagePickerUtil.pickImage() ??
                            //         controller.profileImage.value;
                            //   },
                            //   child: Center(
                            //     child: Container(
                            //       height: 100,
                            //       width: 100,

                            //       decoration: BoxDecoration(
                            //         color: AppColors.lightGreyColor,
                            //         borderRadius: BorderRadius.circular(10),
                            //       ),
                            //       child: Obx(
                            //         () => controller.profileImage.value != null
                            //             ? ClipRRect(
                            //                 borderRadius: BorderRadius.circular(10),
                            //                 child: Image.file(
                            //                   controller.profileImage.value!,
                            //                   fit: BoxFit.cover,
                            //                 ),
                            //               )
                            //             : Padding(
                            //                 padding: defaultPadding,
                            //                 child: Column(
                            //                   mainAxisAlignment: mainAxisCenter,
                            //                   children: [
                            //                     Icon(
                            //                       Iconsax.user,
                            //                       color: AppColors.greyColor,
                            //                     ),
                            //                     heightBox(8),
                            //                     Text(
                            //                       "Profile Picture",
                            //                       style: context.displaySmall!
                            //                           .copyWith(
                            //                             fontSize: 10,
                            //                             color:
                            //                                 AppColors.darkGreyColor,
                            //                           ),
                            //                       textAlign: textAlignCenter,
                            //                     ),
                            //                   ],
                            //                 ),
                            //               ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            heightBox(30),
                            Form(
                              key: controller.formKey,
                              child: Column(
                                crossAxisAlignment: crossAxisStart,
                                children: [
                                  CustomTextFormField(
                                    validator: Validator.validateName,
                                    controller: controller.nameController,
                                    hintText: "Enter Your Full Name",
                                    prefixIcon: Iconsax.user,
                                    fillColor: AppColors.halfWhiteColor,
                                  ),
                                  heightBox(20),
                                  CustomTextFormField(
                                    validator: Validator.validateEmail,
                                    controller: controller.emailController,
                                    hintText: "Enter Your Email",
                                    prefixIcon: Iconsax.sms,
                                    fillColor: AppColors.halfWhiteColor,
                                  ),
                                  heightBox(20),
                                  CustomTextFormField(
                                    validator: Validator.validatePassword,
                                    obscureText: true,
                                    controller: controller.passwordController,
                                    hintText: "Enter Your Password",
                                    prefixIcon: Iconsax.lock,
                                    fillColor: AppColors.halfWhiteColor,
                                  ),
                                ],
                              ),
                            ),
                            heightBox(40),
                            Text(
                              "Select Age",
                              style: context.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            heightBox(8),
                            Wrap(
                              direction: Axis.horizontal,
                              alignment: WrapAlignment.center,
                              spacing: 8,
                              runSpacing: 8,
                              children: List.generate(
                                controller.agesList.length,
                                (index) {
                                  return GestureDetector(
                                    onTap: () {
                                      controller.selectedAge.value = index;
                                    },
                                    child: Obx(
                                      () => Container(
                                        decoration: BoxDecoration(
                                          color:
                                              controller.selectedAge.value ==
                                                  index
                                              ? AppColors.appPrimaryColor
                                              : AppColors.lightGreyColor,
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                        width: 100,

                                        padding: defaultPadding,

                                        child: Center(
                                          child: Text(
                                            controller.agesList[index],
                                            style: context.bodyMedium,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Obx(
                      () => controller.isLoading.value
                          ? Center(child: LoadingIndicator())
                          : ListView.builder(
                              itemBuilder: (context, index) {
                                return Obx(
                                  () => CheckboxListTile(
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    checkColor: AppColors.blackTextColor,
                                    side: BorderSide(
                                      color: AppColors.blackTextColor,
                                    ),
                                    activeColor: AppColors.appPrimaryColor,
                                    title: Text(
                                      controller.goals[index].name ?? "",
                                      style: context.bodyMedium!.copyWith(),
                                    ),
                                    value:
                                        controller.selectedGoalsIndex.contains(
                                          controller.goals[index].id,
                                        )
                                        ? true
                                        : false,
                                    onChanged: (bool? value) {
                                      controller.selectedGoalsIndex.contains(
                                            controller.goals[index].id,
                                          )
                                          ? controller.selectedGoalsIndex
                                                .remove(
                                                  controller.goals[index].id,
                                                )
                                          : controller.selectedGoalsIndex.add(
                                              controller.goals[index].id!,
                                            );
                                    },
                                  ),
                                );
                              },
                              itemCount: controller.goals.length,
                            ),
                    ),
                    Padding(
                      padding: screenPadding,
                      child: Column(
                        crossAxisAlignment: crossAxisStart,
                        children: [
                          Text(
                            "Select Food Types",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Obx(
                            () => Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: controller.allergensToAvoid.map((item) {
                                final isSelected = controller.selectedAllergens
                                    .contains(
                                      item.id,
                                    ); // Changed: Check by ID instead of item
                                return ChoiceChip(
                                  side: BorderSide(color: Colors.transparent),
                                  checkmarkColor: Colors.black,
                                  backgroundColor: AppColors.lightGreyColor,
                                  label: Text(
                                    item.name ?? '',
                                    style: context.bodyMedium,
                                  ),
                                  selected: isSelected,
                                  selectedColor: AppColors.appPrimaryColor,
                                  onSelected: (_) {
                                    // Changed: Toggle using ID
                                    if (controller.selectedAllergens.contains(
                                      item.id,
                                    )) {
                                      controller.selectedAllergens.remove(
                                        item.id,
                                      );
                                    } else {
                                      controller.selectedAllergens.add(
                                        item.id!,
                                      );
                                    }
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

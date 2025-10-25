import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:neutri_lens/app/core/widgets/custom_button.dart';
import 'package:neutri_lens/app/routes/app_pages.dart';
import '../../../../../core/core.dart';
import '../../../../../core/widgets/custom_textfield.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UnfocusWrapper(
        child: SingleChildScrollView(
          child: Padding(
            padding: screenPadding,
            child: Center(
              child: Column(
                children: [
                  heightBox(context.screenHeight * 0.07),
                  Image.asset(AppImages.blackappLogo, height: 100, width: 180),
                  heightBox(context.screenHeight * 0.04),
                  Text(
                    "Log In",
                    style: context.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  heightBox(8),
                  SizedBox(
                    width: context.screenWidth * 0.8,
                    child: Text(
                      "Welcome, again. Please, login to continue.",
                      style: context.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkGreyColor,
                      ),
                      textAlign: textAlignCenter,
                    ),
                  ),
                  heightBox(context.screenWidth * 0.1),

                  Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          controller: controller.emailController,
                          hintText: "Enter Your Email",
                          prefixIcon: Iconsax.sms,
                          fillColor: AppColors.halfWhiteColor,
                          validator: (val) => Validator.validateEmail(val),
                        ),
                        heightBox(context.screenWidth * 0.03),
                        CustomTextFormField(
                          controller: controller.passwordController,
                          hintText: "Enter Your Password",
                          prefixIcon: Iconsax.lock,
                          fillColor: AppColors.halfWhiteColor,
                          obscureText: true,
                          validator: (val) => Validator.validatePassword(val),
                        ),

                        Row(
                          children: [
                            Obx(
                              () => Expanded(
                                child: CheckboxListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  title: Text(
                                    "Remember Me",
                                    style: context.bodyMedium!.copyWith(),
                                  ),
                                  value: controller.rememberMe.value,
                                  onChanged: (bool? value) async {
                                    controller.rememberMe.value =
                                        value ?? false;
                                  },
                                ),
                              ),
                            ),
                            // TextButton(
                            //   onPressed: () {},
                            //   child: Text(
                            //     "Forgot Password?",
                            //     style: context.bodyMedium!.copyWith(
                            //       color: AppColors.appPrimaryColor,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        heightBox(context.screenHeight * 0.05),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: Obx(
                            () => CustomButton(
                              isLoading: controller.isLoading.value,
                              text: "Log In",
                              onPressed: () async {
                                if (controller.formKey.currentState!
                                    .validate()) {
                                  await controller.login();
                                }
                              },

                              radius: 10,
                              textColor: AppColors.appDarkThemeBackground,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  heightBox(20),
                  SizedBox(
                    width: context.screenWidth * 0.5,
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(color: AppColors.lightGreyColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "OR",
                            style: context.bodyMedium!.copyWith(
                              color: AppColors.darkGreyColor,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(color: AppColors.lightGreyColor),
                        ),
                      ],
                    ),
                  ),
                  // heightBox(20),

                  // Image.asset(AppIcons.applelogin),
                  // heightBox(10),
                  // Image.asset(AppIcons.googlelogin),
                  // heightBox(10),
                  // Image.asset(AppIcons.facebooklogin),
                  heightBox(context.screenHeight * 0.03),
                  //cretea account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: context.bodyLarge!.copyWith(
                          color: AppColors.darkGreyColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.SIGNUP);
                        },
                        child: Text(
                          "Sign Up",
                          style: context.bodyLarge!.copyWith(
                            color: AppColors.appPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //write in rich text bold the terms of service and privacy policy
                  heightBox(context.screenHeight * 0.03),
                  RichText(
                    textAlign: textAlignCenter,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "By continuing, you agree to our ",
                          style: context.bodyMedium!.copyWith(
                            color: AppColors.darkGreyColor,
                          ),
                        ),
                        TextSpan(
                          text: "Terms of Service",
                          style: context.bodyMedium!.copyWith(
                            color: AppColors.greyColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " and ",
                          style: context.bodyMedium!.copyWith(
                            color: AppColors.darkGreyColor,
                          ),
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: context.bodyMedium!.copyWith(
                            color: AppColors.greyColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

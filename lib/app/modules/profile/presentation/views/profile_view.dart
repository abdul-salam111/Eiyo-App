import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neutri_lens/app/core/core.dart';
import 'package:neutri_lens/app/core/data/local_data/secure_storage/storage.dart';
import 'package:neutri_lens/app/core/widgets/custom_button.dart';
import 'package:neutri_lens/app/core/widgets/custom_textfield.dart';
import '../../../../core/services/session_manager.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: AppColors.appPrimaryColor,
        actions: [
          TextButton.icon(
            onPressed: () async {
              await storage.clearValues(StorageKeys.userDetails);
              await storage.clearValues(StorageKeys.loggedIn);
              await storage.clearValues(StorageKeys.token);
              await storage.clearValues(StorageKeys.password);
              await Get.offAllNamed(Routes.SIGNIN);
            },
            label: Text("Logout", style: context.bodyMedium),
            icon: Icon(Icons.logout, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: padding16,
                decoration: BoxDecoration(
                  color: AppColors.successColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: crossAxisCenter,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.whiteTextColor,
                      radius: 52,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: CachedNetworkImageProvider(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFASiuRnDSREyWEtfH5sU1SIXfwZRjjF475Q&s",
                        ),
                      ),
                    ),
                    heightBox(10),
                    Obx(
                      () => Text(
                        " ${controller.isLoading.value ? "Loading..." : controller.userName.value}",
                        style: context.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    heightBox(2),
                    Text(
                      " ${SessionController().getUserDetails.username ?? ""}",
                      style: context.bodyMedium!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    heightBox(10),
                  ],
                ),
              ),

              Padding(
                padding: screenPadding,
                child: Column(
                  crossAxisAlignment: crossAxisStart,
                  children: [
                    heightBox(30),
                    CustomTextFormField(
                      controller: controller.nameController,
                      hintText:
                          " ${SessionController().getUserDetails.fullName ?? ""}",
                      label: "Full Name",
                      labelfontSize: 14,
                      labelColor: Colors.black,
                      borderColor: AppColors.darkGreyColor.withAlpha(90),
                    ),
                    heightBox(10),
                    CustomTextFormField(
                      readonly: true,
                      controller: controller.emailController,
                      hintText:
                          " ${SessionController().getUserDetails.username ?? ""}",
                      label: "Email",
                      labelfontSize: 14,
                      labelColor: Colors.black,
                      borderColor: AppColors.darkGreyColor.withAlpha(90),
                    ),
                    heightBox(10),
                    Text("Age", style: context.bodyMedium),
                    heightBox(5),
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      spacing: 6,
                      runSpacing: 6,
                      children: List.generate(controller.agesList.length, (
                        index,
                      ) {
                        return GestureDetector(
                          onTap: () {
                            controller.selectedAge.value = index;
                          },
                          child: Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                color: controller.selectedAge.value == index
                                    ? AppColors.appPrimaryColor
                                    : AppColors.lightGreyColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: 70,

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
                      }),
                    ),
                  ],
                ),
              ),
              heightBox(
                Platform.isAndroid
                    ? context.screenHeight * 0.04
                    : context.screenHeight * 0.05,
              ),
              SizedBox(
                height: 45,
                width: 200,

                child: Obx(
                  () => CustomButton(
                    isLoading: controller.isLoading.value,
                    text: "Update Profile",
                    onPressed: () async {
                      await controller.updateProfile();
                    },
                    backgroundColor: AppColors.appPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

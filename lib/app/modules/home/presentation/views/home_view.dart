// ignore_for_file: deprecated_member_use
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:neutri_lens/app/core/core.dart';
import 'package:neutri_lens/app/core/services/session_manager.dart';
import 'package:neutri_lens/app/core/widgets/custom_button.dart';
import 'package:neutri_lens/app/core/widgets/loading_indicator.dart';
import 'package:neutri_lens/app/core/widgets/loading_popup.dart';
import 'package:neutri_lens/app/core/widgets/snackbars.dart';
import '../../../../core/utils/grade_color.dart';
import '../../../../routes/app_pages.dart';
import '../../../result/data/models/goals_and_pref_request_model/goals_and_preference_request_model.dart';
import '../../../result/presentation/controllers/result_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return UnfocusWrapper(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Discover'),
        //   centerTitle: false,
        //   actions: [
        //     GestureDetector(
        //       onTap: () {},
        //       child: CircleAvatar(
        //         backgroundColor: AppColors.lightGreyColor,
        //         child: Icon(
        //           Iconsax.notification,
        //           color: AppColors.appPrimaryColor,
        //         ),
        //       ),
        //     ),
        //     widthBox(10),
        //   ],
        // ),
        body: Column(
          crossAxisAlignment: crossAxisStart,
          children: [
            Container(
              padding: padding16,
              decoration: BoxDecoration(
                color: AppColors.successColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: crossAxisStart,
                children: [
                  heightBox(Platform.isAndroid ? 40 : 60),
                  Text(
                    "Hello, ${SessionController().getUserDetails.fullName ?? ""}",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                  heightBox(5),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Let's find healthy products!",
                          style: context.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  heightBox(10),
                  SizedBox(
                    child: TextField(
                      autofocus: false,
                      controller: controller.searchController,
                      cursorColor: Colors.black,
                      style: context.bodyMedium!.copyWith(
                        color: AppColors.greyColor,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        hintText: "Search for keywords",
                        hintStyle: context.bodyMedium!.copyWith(
                          color: AppColors.greyColor,
                        ),
                        fillColor: AppColors.whiteTextColor,
                        filled: true,
                        prefixIcon: Icon(
                          Iconsax.search_normal,
                          color: AppColors.greyColor,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColors.greyColor),
                        ),
                      ),
                    ),
                  ),

                  heightBox(10),
                ],
              ),
            ),
            // heightBox(10),
            // Text(
            //   "All Products",
            //   style: context.bodyMedium!.copyWith(
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            Expanded(
              child: Obx(() {
                if (controller.isLoading.value && controller.products.isEmpty) {
                  return const Center(child: LoadingIndicator(size: 30));
                }

                if (controller.errorMessage.value.isNotEmpty &&
                    controller.products.isEmpty) {
                  return Center(
                    child: Padding(
                      padding: screenPadding,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.errorMessage.value,
                            style: context.bodyMedium!.copyWith(),
                            textAlign: textAlignCenter,
                          ),
                          heightBox(10),
                          CustomButton(
                            radius: 10,
                            onPressed: () => controller.getProducts(),
                            text: 'Retry',
                            fontsize: 12,
                          ),
                        ],
                      ),
                    ),
                  );
                }

                if (controller.products.isEmpty) {
                  // When user hasn’t searched yet → show nothing (default empty state)
                  if (controller.searchQuery.value.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Iconsax.search_normal,
                            size: 60,
                            color: Colors.grey,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Search to find products",
                            style: context.bodyLarge!.copyWith(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  // When user searched but no results found
                  return Center(
                    child: Text(
                      'No products found for "${controller.searchQuery.value}"',
                      style: context.bodyMedium,
                    ),
                  );
                }

                return ListView.builder(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: screenPadding,
                  controller: controller.scrollController,
                  itemCount:
                      controller.products.length +
                      (controller.hasMoreData.value ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == controller.products.length) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: controller.isLoadingMore.value
                              ? const CircularProgressIndicator()
                              : const SizedBox.shrink(),
                        ),
                      );
                    }

                    final product = controller.products[index];

                    return InkWell(
                      onTap: () async {
                        dismissKeyboard(context);
                        final productCode = product.code;
                        if (productCode == null || productCode.isEmpty) {
                          AppSnackBar.error(context, "Product code not found");
                          return;
                        }

                        showLoadingPopup(message: "Loading product details...");

                        try {
                          final resultController = Get.find<ResultController>();
                          // Fetch product details
                          await resultController.getProductDetails(productCode);
                          resultController.getGoalsAndPreferences(
                            GoalsAndPreferenceRequestModel(
                              nutriments: product.nutriments!
                                  .toJson()
                                  .entries
                                  .map((e) => "${e.key}: ${e.value}")
                                  .join(", "),
                              ingredients: product.ingredientsText,
                            ),
                          );
                          resultController.getSuggestedProduct(
                            product.categoriesTags!,
                          );
                          // Close loading dialog
                          Get.back();

                          // Navigate to result page
                          await Get.toNamed(Routes.RESULT);
                        } catch (e) {
                          // Close loading dialog
                          Get.back();

                          AppSnackBar.error(
                            context,
                            "Failed to load product details",
                          );
                        }
                      },
                      child: Container(
                        padding: defaultPadding,
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.lightGreyColor.withAlpha(80),
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.darkGreyColor.withAlpha(80),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: product.imageFrontSmallUrl != null
                                    ? CachedNetworkImage(
                                        imageUrl: product.imageFrontSmallUrl!,
                                        height: Platform.isAndroid ? 100 : 100,
                                        width: Platform.isAndroid ? 100 : 100,
                                        fit: BoxFit.cover,

                                        errorWidget: (context, url, error) =>
                                            Image.asset(
                                              AppImages.appLogo,
                                              height: 90,
                                              width: 90,
                                            ),
                                      )
                                    : SizedBox.shrink(),
                              ),
                            ),
                            widthBox(10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: crossAxisStart,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.3,
                                        child: Text(
                                          product.productName ?? "N/A",
                                          style: context.bodyLarge!.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: context.width * 0.14,
                                        child: Text(
                                          "(${product.quantity ?? "N/A"})",
                                          style: context.bodySmall!.copyWith(
                                            color: AppColors.greyColor,
                                          ),
                                          maxLines: 1,
                                          textAlign: textAlignRight,
                                        ),
                                      ),
                                    ],
                                  ),

                                  heightBox(4),

                                  /// Brand (wraps automatically)
                                  if (product.brands != null)
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: product.brands ?? "N/A",
                                            style: context.bodySmall!.copyWith(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      overflow: TextOverflow.visible,
                                      maxLines: 1,
                                    ),
                                  if (product.categories != null)
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: product.categories ?? "N/A",
                                            style: context.bodySmall!.copyWith(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      overflow: TextOverflow.visible,
                                      maxLines: 1,
                                    ),

                                  heightBox(8),

                                  /// NutriScore + FoodIQ
                                  buildGradeBadge(
                                    context,
                                    product.nutriscoreGrade,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGradeBadge(BuildContext context, String? grade) {
    if (grade == null || grade.isEmpty) {
      return const SizedBox.shrink(); // Don't show badge if unknown
    }

    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: context.screenWidth * 0.35,
        padding: padding5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: getGradeColor(grade),
        ),
        child: Center(
          child: Text(
            getGradeText(grade),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
        ),
      ),
    );
  }
}

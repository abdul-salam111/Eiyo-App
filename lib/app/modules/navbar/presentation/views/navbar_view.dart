// ignore_for_file: deprecated_member_use
import 'dart:io';
import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:neutri_lens/app/core/core.dart';
import 'package:neutri_lens/app/core/widgets/loading_popup.dart';
import 'package:neutri_lens/app/modules/home/presentation/views/home_view.dart';
import 'package:neutri_lens/app/modules/profile/presentation/views/profile_view.dart';
import 'package:neutri_lens/app/modules/settings/presentation/views/settings_view.dart';
import 'package:neutri_lens/app/modules/trends/presentation/views/trends_view.dart';
import 'package:neutri_lens/app/routes/app_pages.dart';
import '../../../result/data/models/goals_and_pref_request_model/goals_and_preference_request_model.dart';
import '../../../result/presentation/controllers/result_controller.dart';
import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: const [
            HomeView(),
            TrendsView(),
            SettingsView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: _buildBottomNavBar(context),
      ),
    );
  }

  // ===========================================================================
  // ⬇️ Bottom Navigation Bar
  // ===========================================================================
  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: Platform.isAndroid ? 8 : 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(50),
            blurRadius: 8,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.explore_outlined, Icons.explore, "Discover", 0),
          _buildNavItem(Icons.trending_up, Icons.trending_up, "Trends", 1),
          _buildScanButton(context),
          _buildNavItem(Icons.settings_outlined, Icons.settings, "Settings", 2),
          _buildNavItem(Icons.person_outline, Icons.person, "Profile", 3),
        ],
      ),
    );
  }

  // ===========================================================================
  // ⬇️ Navigation Item Builder
  // ===========================================================================
  Widget _buildNavItem(
    IconData outlineIcon,
    IconData filledIcon,
    String label,
    int index,
  ) {
    return Obx(() {
      final isSelected = controller.currentIndex.value == index;

      return GestureDetector(
        onTap: () => controller.changeIndex(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isSelected ? filledIcon : outlineIcon,
              color: isSelected ? AppColors.appPrimaryColor : Colors.grey,
              size: 30,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 15,
                color: isSelected ? AppColors.appPrimaryColor : Colors.grey,
              ),
            ),
          ],
        ),
      );
    });
  }

  // ===========================================================================
  // ⬇️ Center Scan Button
  // ===========================================================================
  Widget _buildScanButton(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final mobileController = MobileScannerController();

        await Get.to(() {
          return AiBarcodeScanner(
            controller: mobileController,
            scanWindow: Rect.fromCenter(
              center: Offset(
                MediaQuery.of(context).size.width / 2,
                MediaQuery.of(context).size.height / 2,
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 100,
            ),
            onDetectError: (error, stacktrace) {
              if (kDebugMode) print(stacktrace);
            },
            onDetect: (capture) async {
              await _handleBarcodeDetection(mobileController, capture);
            },
          );
        });
      },
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.black,
        child: Icon(Iconsax.scan, color: AppColors.appPrimaryColor, size: 28),
      ),
    );
  }

  // ===========================================================================
  // ⬇️ Handle Barcode Detection Logic
  // ===========================================================================
  Future<void> _handleBarcodeDetection(
    MobileScannerController mobileController,
    BarcodeCapture capture,
  ) async {
    try {
      await mobileController.stop();

      final code = capture.barcodes.first.rawValue;

      if (code == null || code.isEmpty) {
        await _showErrorDialogAndResume(
          "No barcode detected.",
          mobileController,
        );
        return;
      }

      showLoadingPopup(message: "Loading product details...");

      final resultController = Get.put(ResultController(Get.find()));

      // Step 1: Fetch product details
      final productResult = await resultController.getProductDetails(code);

      // Step 2: Fetch goals & preferences
      resultController.getGoalsAndPreferences(
        GoalsAndPreferenceRequestModel(
          nutriments: productResult.product!.nutriments!
              .toJson()
              .entries
              .map((e) => "${e.key}: ${e.value}")
              .join(", "),
          ingredients: productResult.product?.ingredientsText,
        ),
      );

      // Step 3: Fetch suggested products
      resultController.getSuggestedProduct(
        productResult.product!.categoriesTags ?? [],
      );

      // Step 4: Handle error or navigation
      if (resultController.errorMessage.value != null) {
        await _showErrorDialogAndResume("Barcode not found.", mobileController);
      } else {
        if (Get.isDialogOpen == true) Get.back();
        Get.back();
        Get.toNamed(Routes.RESULT);
      }

      if (Get.isDialogOpen == true) Get.back();
    } catch (e) {
      if (Get.isDialogOpen == true) Get.back();
      await _showErrorDialogAndResume(e.toString(), mobileController);
    }
  }

  // ===========================================================================
  // ⬇️ Error Dialog and Resume Scanner
  // ===========================================================================
  Future<void> _showErrorDialogAndResume(
    String message,
    MobileScannerController controller,
  ) async {
    await Get.dialog(
      AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: const Text(
          "Message",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () async {
              Get.back();
              try {
                await controller.start();
              } catch (_) {}
            },
            child: const Text("Close", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}

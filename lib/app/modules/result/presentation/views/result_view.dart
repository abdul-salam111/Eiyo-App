import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neutri_lens/app/core/core.dart';
import 'package:neutri_lens/app/core/widgets/custom_button.dart';
import '../../../../core/utils/grade_color.dart';
import '../../../../core/widgets/loading_popup.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../../../routes/app_pages.dart';
import '../../data/models/goals_and_pref_request_model/goals_and_preference_request_model.dart';
import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  const ResultView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: getGradeColor(controller.grade.value),
        body: controller.errorMessage.value == null
            ? SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: screenPadding,
                    child: Column(
                      children: [
                        heightBox(10),
                        Container(
                          height: context.screenHeight * 0.2,
                          padding: defaultPadding,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  controller
                                              .getProductResultModel
                                              .value
                                              ?.product
                                              ?.imageFrontSmallUrl !=
                                          null &&
                                      controller
                                          .getProductResultModel
                                          .value!
                                          .product!
                                          .imageFrontSmallUrl!
                                          .isNotEmpty &&
                                      Uri.parse(
                                        controller
                                            .getProductResultModel
                                            .value!
                                            .product!
                                            .imageFrontSmallUrl!,
                                      ).isAbsolute
                                  ? CachedNetworkImageProvider(
                                      controller
                                          .getProductResultModel
                                          .value!
                                          .product!
                                          .imageFrontSmallUrl!,
                                    )
                                  : AssetImage(AppImages.appLogo)
                                        as ImageProvider,
                              fit: BoxFit.contain,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: topLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),

                              Positioned(
                                bottom: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 25,
                                  child: CircleAvatar(
                                    backgroundColor: getGradeColor(
                                      controller.grade.value,
                                    ),
                                    radius: 23,
                                    child: Icon(
                                      (controller.grade.value == "a" ||
                                              controller.grade.value == "b")
                                          ? Icons.check
                                          : controller.grade.value == "c"
                                          ? Icons.remove
                                          : Icons.close,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      size: 35,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        heightBox(10),
                        Obx(
                          () => Text(
                            controller
                                    .getProductResultModel
                                    .value
                                    ?.product
                                    ?.productName ??
                                "",
                            textAlign: textAlignCenter,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        heightBox(5),
                        Text(
                          getGradeText(controller.grade.value),
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        heightBox(10),

                        // NutriLens Score Card
                        Container(
                          padding: padding16,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: mainAxisSpaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: crossAxisStart,
                                children: [
                                  Text(
                                    "Health Score",
                                    style: context.titleMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                    ),
                                  ),
                                  heightBox(5),
                                  SizedBox(
                                    width: context.screenWidth * 0.5,
                                    child: Text(
                                      "Overall nutritional rating combining food quality and processing level.",
                                      style: context.bodySmall!.copyWith(),
                                    ),
                                  ),

                                  heightBox(5),
                                ],
                              ),
                              Container(
                                width: 80,
                                padding: padding5,
                                decoration: BoxDecoration(
                                  color: getGradeColor(controller.grade.value),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "${controller.nutriLensScore.value.round()}%",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        heightBox(10),

                        // Score Breakdown
                        Container(
                          padding: padding16,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: crossAxisStart,
                            children: [
                              Text(
                                "Score Breakdown",
                                style: context.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              heightBox(10),
                              _buildScoreRow(
                                context,
                                "Food Quality",
                                controller.foodScore.value,
                                "Based on nutrients like protein, fiber, sugar and sodium.",
                              ),
                              heightBox(8),
                              _buildScoreRow(
                                context,
                                "Processing Level",
                                controller.processedScore.value,
                                "Measures, how natural or refined the food is.",
                              ),
                            ],
                          ),
                        ),
                        heightBox(10),

                        // Score Breakdown
                        Container(
                          padding: padding16,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: crossAxisStart,
                            children: [
                              Text(
                                "Goals",
                                style: context.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),

                              Obx(() {
                                if (controller.isGettingGoals.value) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text("Loading goals..."),
                                  );
                                } else if (controller.goalsMetList.isEmpty &&
                                    controller.goalsNotMet.isEmpty) {
                                  return Text(
                                    "Data not avaialbe.",
                                    style: context.bodySmall!.copyWith(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  );
                                  // Goals MET (Green checkmarks)
                                }

                                return Obx(
                                  () => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (controller
                                          .goalsMetList
                                          .isNotEmpty) ...[
                                        ...controller.goalsMetList.map(
                                          (goal) => Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8.0,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 18,
                                                  height: 18,
                                                  decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          3,
                                                        ),
                                                  ),
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 12,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                widthBox(8),
                                                Expanded(
                                                  child: Text(
                                                    goal.name ?? "",
                                                    style: context.bodySmall!
                                                        .copyWith(
                                                          color:
                                                              Colors.green[800],
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],

                                      // Goals NOT MET (Red X marks)
                                      if (controller
                                          .goalsNotMet
                                          .isNotEmpty) ...[
                                        ...controller.goalsNotMet.map(
                                          (goal) => Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8.0,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 18,
                                                  height: 18,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          3,
                                                        ),
                                                  ),
                                                  child: Icon(
                                                    Icons.close,
                                                    size: 12,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                widthBox(8),
                                                Expanded(
                                                  child: Text(
                                                    goal.name ?? "",
                                                    style: context.bodySmall!
                                                        .copyWith(
                                                          color:
                                                              Colors.red[800],
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                );
                              }),

                              heightBox(20),
                              Text(
                                "Diet Preference",
                                style: context.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),

                              Obx(() {
                                if (controller.isGettingGoals.value) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text("Loading Diets..."),
                                  );
                                } else if (controller.prefMetList.isEmpty &&
                                    controller.prefNotMet.isEmpty) {
                                  return Text(
                                    "Data not available.",
                                    style: context.bodySmall!.copyWith(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  );
                                }
                                return Obx(
                                  () => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Goals MET (Green checkmarks)
                                      if (controller
                                          .prefMetList
                                          .isNotEmpty) ...[
                                        ...controller.prefMetList.map(
                                          (goal) => Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8.0,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 18,
                                                  height: 18,
                                                  decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          3,
                                                        ),
                                                  ),
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 12,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                widthBox(8),
                                                Expanded(
                                                  child: Text(
                                                    goal.name ?? "",
                                                    style: context.bodySmall!
                                                        .copyWith(
                                                          color:
                                                              Colors.green[800],
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],

                                      // Goals NOT MET (Red X marks)
                                      if (controller.prefNotMet.isNotEmpty) ...[
                                        ...controller.prefNotMet.map(
                                          (goal) => Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8.0,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 18,
                                                  height: 18,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          3,
                                                        ),
                                                  ),
                                                  child: Icon(
                                                    Icons.close,
                                                    size: 12,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                widthBox(8),
                                                Expanded(
                                                  child: Text(
                                                    goal.name ?? "",
                                                    style: context.bodySmall!
                                                        .copyWith(
                                                          color:
                                                              Colors.red[800],
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                );
                              }),
                              heightBox(10),
                            ],
                          ),
                        ),

                        heightBox(10),

                        // Original nutrition details section
                        Container(
                          padding: padding16,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: crossAxisStart,
                            children: [
                              // Row(
                              //   mainAxisAlignment: mainAxisSpaceBetween,
                              //   children: [
                              //     Image.asset(
                              //       "assets/icons/like.png",
                              //       height: 50,
                              //       width: 50,
                              //     ),
                              //     Text(
                              //       "Do You Agree?",
                              //       style: context.titleMedium,
                              //     ),
                              //     Image.asset(
                              //       "assets/icons/dislike.png",
                              //       height: 50,
                              //       width: 50,
                              //     ),
                              //   ],
                              // ),
                              heightBox(5),
                              Text(
                                "Key Insights",
                                style: context.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              heightBox(10),
                              Row(
                                mainAxisAlignment: mainAxisSpaceBetween,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      "Nutrient",
                                      style: context.titleMedium!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        "Value",
                                        style: context.titleMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        "Rating",
                                        style: context.titleMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(color: Colors.grey),
                              Column(
                                children: List.generate(
                                  controller.nutritionDetails.length,
                                  (index) {
                                    var neutriDetails =
                                        controller.nutritionDetails[index];
                                    return Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              mainAxisSpaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                "${neutriDetails['display_name']}",
                                                style: context.titleMedium!
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 12,
                                                    ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                  "${neutriDetails['value']}",
                                                  style: context.titleMedium!
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Row(
                                                mainAxisAlignment:
                                                    mainAxisCenter,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 5,
                                                    backgroundColor:
                                                        neutriDetails['level'] ==
                                                            'high'
                                                        ? Colors.red
                                                        : neutriDetails['level'] ==
                                                              'moderate'
                                                        ? Colors.orange
                                                        : Colors.green,
                                                  ),
                                                  widthBox(5),
                                                  Text(
                                                    "${neutriDetails['level'].toString().capitalizeFirst}",
                                                    style: context.titleMedium!
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          color: Colors.grey.withAlpha(60),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              heightBox(20),
                              Text(
                                "Flags: ",
                                style: context.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              heightBox(10),
                              Wrap(
                                spacing: 10,
                                runSpacing: 6,
                                children: List.generate(
                                  controller.nutritionDetails.length,
                                  (index) {
                                    final neutriLevel = controller
                                        .nutritionDetails[index]['level'];
                                    return Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 5,
                                        horizontal: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: neutriLevel == 'high'
                                            ? Colors.red
                                            : neutriLevel == 'moderate'
                                            ? Colors.orange
                                            : Colors.green,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Text(
                                        "${neutriLevel.toString().capitalizeFirst} - ${controller.nutritionDetails[index]['display_name'].toString()}",
                                        style: context.bodySmall!.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        heightBox(10),
                        Container(
                          padding: defaultPadding,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: crossAxisStart,
                            children: [
                              heightBox(10),
                              Text(
                                "Suggested Products",
                                style: context.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              heightBox(10),
                              Obx(
                                () => SizedBox(
                                  height: context.screenHeight * 0.19,
                                  child: controller.isLoadingSuggested.value
                                      ? Center(
                                          child: Text(
                                            "Please, wait for the suggested products...",
                                          ),
                                        )
                                      : controller.suggestedProducts.isEmpty
                                      ? Center(
                                          child: Text(
                                            controller
                                                    .suggestproductError
                                                    .value
                                                    .isNotEmpty
                                                ? "Data not available"
                                                : "No food proudct found for this barcode.",
                                          ),
                                        )
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: List.generate(controller.suggestedProducts.length, (
                                            index,
                                          ) {
                                            final product = controller
                                                .suggestedProducts[index];

                                            return Expanded(
                                              child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 4,
                                                    ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Get.generalDialog(
                                                      pageBuilder:
                                                          (
                                                            context,
                                                            animation,
                                                            secondaryAnimation,
                                                          ) {
                                                            return Dialog(
                                                              constraints: BoxConstraints(
                                                                minHeight:
                                                                    context
                                                                        .screenHeight *
                                                                    0.5,
                                                                maxHeight:
                                                                    context
                                                                        .screenHeight *
                                                                    0.65,
                                                                minWidth:
                                                                    context
                                                                        .screenWidth *
                                                                    0.8,
                                                              ),
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        15,
                                                                      ),
                                                                ),
                                                                width:
                                                                    double
                                                                        .infinity -
                                                                    80,
                                                                child: Column(
                                                                  children: [
                                                                    Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topRight,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(
                                                                                8,
                                                                              ),
                                                                          child: CachedNetworkImage(
                                                                            imageUrl:
                                                                                product.imageUrl ??
                                                                                "",
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                context.height *
                                                                                0.4,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        InkWell(
                                                                          onTap: () {
                                                                            Get.back();
                                                                          },
                                                                          child: Padding(
                                                                            padding: const EdgeInsets.all(
                                                                              8.0,
                                                                            ),
                                                                            child: CircleAvatar(
                                                                              backgroundColor: Colors.white,
                                                                              child: Icon(
                                                                                Icons.close,
                                                                                color: Colors.red,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                            8.0,
                                                                          ),
                                                                      child: Center(
                                                                        child: Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            RichText(
                                                                              maxLines: 2,
                                                                              text: TextSpan(
                                                                                style: context.bodyLarge,
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: "Product Name: ",
                                                                                    style: TextStyle(
                                                                                      color: Colors.black,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text:
                                                                                        product.productName ??
                                                                                        "",
                                                                                    style: TextStyle(
                                                                                      color: Colors.grey,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            heightBox(
                                                                              5,
                                                                            ),
                                                                            RichText(
                                                                              text: TextSpan(
                                                                                style: context.bodyLarge,
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: "Brand: ",
                                                                                    style: TextStyle(
                                                                                      color: Colors.black,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text:
                                                                                        product.brand ??
                                                                                        "",
                                                                                    style: TextStyle(
                                                                                      color: Colors.grey,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            heightBox(
                                                                              5,
                                                                            ),
                                                                            RichText(
                                                                              text: TextSpan(
                                                                                style: context.bodyLarge,
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: "Health Score: ",
                                                                                    style: TextStyle(
                                                                                      color: Colors.black,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: "${controller.mapNutriScoreLetterTo100(product.nutritionGrade)}%",
                                                                                    style: TextStyle(
                                                                                      color: Colors.grey,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            heightBox(
                                                                              5,
                                                                            ),
                                                                            Center(
                                                                              child: SizedBox(
                                                                                width:
                                                                                    context.screenWidth *
                                                                                    0.6,
                                                                                child: Obx(
                                                                                  () => CustomButton(
                                                                                    isLoading: controller.isLoading.value,
                                                                                    text: "View Analysis",
                                                                                    onPressed: () async {
                                                                                      final barcode = product.barcode;
                                                                                      if (barcode ==
                                                                                              null ||
                                                                                          barcode.isEmpty) {
                                                                                        AppSnackBar.error(
                                                                                          context,
                                                                                          "Product code not found",
                                                                                        );
                                                                                        return;
                                                                                      }

                                                                                      Get.back();

                                                                                      // Show loading dialog
                                                                                      showLoadingPopup(
                                                                                        message: "Loading product details...",
                                                                                      );

                                                                                      try {
                                                                                        await Future.delayed(
                                                                                          const Duration(
                                                                                            milliseconds: 100,
                                                                                          ),
                                                                                        );

                                                                                        await controller.getProductDetails(
                                                                                          barcode,
                                                                                        );
                                                                                        controller.getSuggestedProduct(
                                                                                          controller.getProductResultModel.value?.product?.categoriesTags ??
                                                                                              [],
                                                                                        );
                                                                                        controller.getGoalsAndPreferences(
                                                                                          GoalsAndPreferenceRequestModel(
                                                                                            nutriments: controller.getProductResultModel.value?.product?.nutriments!
                                                                                                .toJson()
                                                                                                .entries
                                                                                                .map(
                                                                                                  (
                                                                                                    e,
                                                                                                  ) => "${e.key}: ${e.value}",
                                                                                                )
                                                                                                .join(
                                                                                                  ", ",
                                                                                                ),
                                                                                            ingredients: controller.getProductResultModel.value?.product?.ingredientsText,
                                                                                          ),
                                                                                        );

                                                                                        Get.back();

                                                                                        Get.offAndToNamed(
                                                                                          Routes.RESULT,
                                                                                        );
                                                                                      } catch (
                                                                                        e
                                                                                      ) {
                                                                                        // Close loading dialog
                                                                                        Get.back();

                                                                                        AppSnackBar.error(
                                                                                          context,
                                                                                          "Failed to load product details",
                                                                                        );
                                                                                      }
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                      transitionBuilder:
                                                          (
                                                            context,
                                                            animation,
                                                            secondaryAnimation,
                                                            child,
                                                          ) {
                                                            return FadeTransition(
                                                              opacity:
                                                                  animation,
                                                              child: ScaleTransition(
                                                                scale:
                                                                    Tween<double>(
                                                                      begin:
                                                                          0.7,
                                                                      end: 1.0,
                                                                    ).animate(
                                                                      CurvedAnimation(
                                                                        parent:
                                                                            animation,
                                                                        curve: Curves
                                                                            .easeOutCubic,
                                                                      ),
                                                                    ),
                                                                child: child,
                                                              ),
                                                            );
                                                          },
                                                      transitionDuration:
                                                          const Duration(
                                                            milliseconds: 400,
                                                          ),
                                                      barrierDismissible: true,
                                                      barrierLabel: '',
                                                    );
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              8,
                                                            ),
                                                        child: CachedNetworkImage(
                                                          imageUrl:
                                                              product
                                                                  .imageUrl ??
                                                              "",
                                                          width:
                                                              double.infinity,
                                                          height: 100,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Text(
                                                        product.productName ??
                                                            "",
                                                        style:
                                                            context.bodyMedium,
                                                        maxLines: 1,
                                                        textAlign:
                                                            TextAlign.center,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                        ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        heightBox(20),
                      ],
                    ),
                  ),
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: mainAxisCenter,
                  children: [
                    Text(
                      controller.errorMessage.value.toString().toUpperCase(),
                    ),
                    heightBox(20),
                    SizedBox(
                      width: 100,
                      child: CustomButton(
                        text: "Close",
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildScoreRow(
    BuildContext context,
    String label,
    double score,
    String weight,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
        ),
        Text(
          weight,
          style: context.bodySmall!.copyWith(color: Colors.grey[600]),
        ),
        Row(
          children: [
            Expanded(
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0, end: score / 100),
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeOutCubic,
                builder: (context, value, _) {
                  return LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(10),
                    value: value,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      (score >= 80
                          ? Colors.green
                          : score >= 65
                          ? Colors.lightGreen
                          : score >= 50
                          ? Colors.orange
                          : Colors.red),
                    ),
                    minHeight: 8,
                  );
                },
              ),
            ),
            widthBox(10),
            Text(
              "${score.round()}",
              style: context.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

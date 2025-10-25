import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neutri_lens/app/core/widgets/count_down_circle.dart';
import 'package:neutri_lens/app/core/widgets/loading_indicator.dart';
import 'package:neutri_lens/app/modules/trends/presentation/views/good_pickes_chart_widget.dart';
import '../../../../core/core.dart';
import '../controllers/trends_controller.dart';

class TrendsView extends GetView<TrendsController> {
  const TrendsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        title: const Text('Trends'),
        centerTitle: false,
      ),
      body: ListView(
        padding: screenPadding,
        children: [
          heightBox(10),
          Text(
            "See how your choices add up",
            style: context.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          heightBox(5),
          heightBox(10),
          SizedBox(
            height: context.screenHeight * 0.05,

            child: Row(
              mainAxisAlignment: mainAxisSpaceBetween,
              children: List.generate(controller.statesMode.length, (index) {
                return InkWell(
                  onTap: () async {
                    controller.selectedStatesMode.value = index;
                    await controller.getTrendsToDisplay();
                  },
                  child: Obx(
                    () => Container(
                      width: context.screenWidth * 0.26,
                      decoration: BoxDecoration(
                        color: controller.selectedStatesMode.value == index
                            ? AppColors.appPrimaryColor
                            : AppColors.lightGreyColor.withAlpha(90),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          controller.statesMode[index],
                          style: context.bodyMedium!.copyWith(
                            color: controller.selectedStatesMode.value == index
                                ? Colors.white
                                : Colors.black,
                            fontSize:
                                controller.selectedStatesMode.value == index
                                ? 15
                                : 15,
                            fontWeight:
                                controller.selectedStatesMode.value == index
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          heightBox(10),
          Obx(
            () => controller.isloading.value
                ? Center(child: LoadingIndicator())
                : Column(
                    children: [
                      Container(
                        padding: defaultPadding,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.lightGreyColor.withAlpha(90),
                        ),
                        child: Column(
                          crossAxisAlignment: crossAxisStart,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: mainAxisSpaceBetween,
                                children: [
                                  Text(
                                    "Good Picks",
                                    style: context.bodyMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Text(
                                    "${controller.goodPickAvg.value.toStringAsFixed(1)}%", // Fixed this line
                                    style: context.titleLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            heightBox(10),
                            Obx(
                              () => controller.hasChartData
                                  ? GoodPicksChart(
                                      showDots: true,
                                      dataPoints: controller.foodIqChartData,
                                      minX: controller.minX.value,
                                      maxX: controller.maxX.value,
                                      minY: controller.minY.value,
                                      maxY: controller.maxY.value,
                                    )
                                  : Center(
                                      child: Text(
                                        "No data available for the selected period",
                                        style: context.bodyMedium,
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
          heightBox(10),
          Obx(
            () => controller.isloading.value
                ? Center(child: SizedBox())
                : Container(
                    padding: padding14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.lightGreyColor.withAlpha(90),
                    ),
                    child: Row(
                      crossAxisAlignment: crossAxisCenter,
                      children: [
                        Column(
                          crossAxisAlignment: crossAxisStart,
                          mainAxisAlignment: mainAxisSpaceAround,
                          children: [
                            Text(
                              "Avg Health Score",
                              style: context.bodyMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.greyColor,
                              ),
                            ),
                            heightBox(20),
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  padding: padding5,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${controller.goodPickAvg.value.toStringAsFixed(1)}%", // Fixed this line
                                      style: context.titleSmall!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                widthBox(10),
                                Text(
                                  "Good Picks",
                                  style: context.bodyMedium!.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            heightBox(10),
                            Row(
                              children: [
                                Container(
                                  width: 60,

                                  padding: padding5,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${controller.mediumPickAvg.value.toStringAsFixed(1)}%",
                                      style: context.titleSmall!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                widthBox(10),
                                Text(
                                  "Ok Picks",
                                  style: context.bodyMedium!.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            heightBox(10),
                            Row(
                              children: [
                                Container(
                                  width: 60,

                                  padding: padding5,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${controller.poorPickAvg.value.toStringAsFixed(1)}%", // Fixed this line
                                      style: context.titleSmall!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                widthBox(10),
                                Text(
                                  "Bad Picks",
                                  style: context.bodyMedium!.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        widthBox(10),
                        Expanded(
                          child: MultiColorCountdownCircle(
                            goodValue: controller.goodPickAvg.value,
                            mediumValue: controller.mediumPickAvg.value,
                            poorValue: controller.poorPickAvg.value,
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

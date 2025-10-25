import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neutri_lens/app/core/core.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: false,
        backgroundColor: AppColors.appPrimaryColor,
        actions: [
          Obx(
            () => controller.isLoading.value
                ? Center(child: CircularProgressIndicator(color: Colors.white))
                : TextButton.icon(
                    onPressed: () async {
                      if (controller.isEdit.value) {
                        // Now it's in edit mode, so pressing means "Update"
                        await controller.updateProfile();
                        controller.isEdit.value =
                            false; // Exit edit mode after successful update
                      } else {
                        controller.isEdit.value = true; // Enter edit mode
                      }
                    },
                    label: Text(
                      controller.isEdit.value ? "Update" : "Edit",
                      style: context.bodyMedium,
                    ),
                    icon: Icon(
                      controller.isEdit.value ? Icons.done : Icons.edit,
                      color: Colors.black,
                    ),
                  ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: screenPadding,
          child: Column(
            crossAxisAlignment: crossAxisStart,
            children: [
              heightBox(20),
              Text(
                "Selected Goals",
                style: context.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
              heightBox(10),
              Obx(
                () => Column(
                  children: List.generate(controller.goals.length, (index) {
                    return Obx(
                      () => CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        visualDensity: VisualDensity(vertical: -4),
                        controlAffinity: ListTileControlAffinity.leading,
                        checkColor: AppColors.blackTextColor,
                        side: BorderSide(color: AppColors.appPrimaryColor),
                        activeColor: AppColors.appPrimaryColor,
                        title: Text(
                          controller.goals[index].name ?? "",
                          style: context.bodyMedium!.copyWith(),
                        ),
                        value: controller.selectedGoalsIndex.contains(index)
                            ? true
                            : false,
                        onChanged: controller.isEdit.value
                            ? (value) {
                                if (value!) {
                                  controller.selectedGoalsIndex.add(index);
                                } else {
                                  controller.selectedGoalsIndex.remove(index);
                                }
                              }
                            : (val) {},
                      ),
                    );
                  }),
                ),
              ),
              heightBox(20),
              Text(
                "Food Types",
                style: context.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Obx(
                () => Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: controller.allergensToAvoid.map((item) {
                    final isSelected = controller.selectedAllergens.contains(
                      item.id,
                    );

                    return ChoiceChip(
                      label: Text(
                        item.name ?? "",
                        style: context.bodyMedium!.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      selected: isSelected,
                      checkmarkColor: Colors.black,
                      side: const BorderSide(color: AppColors.appPrimaryColor),
                      backgroundColor: Colors.white,
                      selectedColor: AppColors.appPrimaryColor,
                      disabledColor: isSelected
                          ? AppColors.appPrimaryColor
                          : Colors
                                .white, // ✅ consistent color even when disabled
                      onSelected: (_) {
                        if (!controller.isEdit.value)
                          return; // ✅ ignore taps when not editing
                        if (isSelected) {
                          controller.selectedAllergens.remove(item.id);
                        } else {
                          controller.selectedAllergens.add(item.id!);
                        }
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

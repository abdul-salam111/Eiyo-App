import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../core.dart';

class CustomSearchField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool readOnly;

  const CustomSearchField({
    super.key,
    this.hintText = "Search",
    this.controller,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        autofocus: false,
        controller: controller,
        onChanged: onChanged,
        onTap: onTap,
        readOnly: readOnly,
        cursorColor: Colors.black,
        style: context.bodyMedium!.copyWith(color: AppColors.greyColor),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: hintText,
          hintStyle: context.bodyMedium!.copyWith(color: AppColors.greyColor),
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
    );
  }
}

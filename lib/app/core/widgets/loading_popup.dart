// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neutri_lens/app/core/core.dart';
import 'package:neutri_lens/app/core/widgets/loading_indicator.dart';

void showLoadingPopup({String message = "Please wait..."}) {
  Get.dialog(
    WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        backgroundColor: Colors.white,
        constraints: BoxConstraints(maxWidth: 180, minWidth: 180),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const LoadingIndicator(size: 30),
              const SizedBox(height: 20),
              Text(
                message,
                style: const TextStyle(fontSize: 14),
                textAlign: textAlignCenter,
              ),
            ],
          ),
        ),
      ),
    ),
    barrierDismissible: false,
  );
}

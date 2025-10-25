// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:neutri_lens/app/core/core.dart';

class LoadingOverlay extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  const LoadingOverlay({
    super.key,
    required this.isLoading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child, // your main UI
        if (isLoading)
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4),
              child: const Center(
                child: CircularProgressIndicator(
                  color: AppColors.appPrimaryColor,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

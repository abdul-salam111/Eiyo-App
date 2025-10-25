import 'package:flutter/material.dart';

class AppSnackBar {
  static void success(BuildContext context, String message) {
    _showSnackBar(
      context,
      title: "Success",
      message: message,
      backgroundColor: Colors.green,
      icon: Icons.check_circle,
    );
  }

  static void error(BuildContext context, String message) {
    _showSnackBar(
      context,
      title: "Error",
      message: message,
      backgroundColor: Colors.red,
      icon: Icons.error,
    );
  }

  static void info(BuildContext context, String message) {
    _showSnackBar(
      context,
      title: "Info",
      message: message,
      backgroundColor: Colors.blueAccent,
      icon: Icons.info,
    );
  }

  static void _showSnackBar(
    BuildContext context, {
    required String title,
    required String message,
    required Color backgroundColor,
    required IconData icon,
  }) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    message,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

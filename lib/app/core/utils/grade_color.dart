import 'package:flutter/material.dart';

Color getGradeColor(String grade) {
  switch (grade.toLowerCase()) {
    case 'a':
      return Colors.green; // 80-100: Excellent
    case 'b':
      return Colors.lightGreen; // 65-79: Good
    case 'c':
      return Colors.orangeAccent; // 50-64: Average
    case 'd':
      return Colors.deepOrange; // 35-49: Poor
    case 'e':
      return Colors.red; // 0-34: Very Poor
    default:
      return Colors.grey; // Unknown
  }
}

// Helper function to get grade text
String getGradeText(String grade) {
  switch (grade.toLowerCase()) {
    case 'a':
      return "Excellent Choice"; // Excellent nutritional quality
    case 'b':
      return "Great Choice"; // Good nutritional quality
    case 'c':
      return "Fair Pick"; // Average nutritional quality
    case 'd':
      return "Not Recommended"; // Poor nutritional quality
    case 'e':
      return "Not Recommended"; // Very poor nutritional quality
    default:
      return "Unknown";
  }
}

String getNutritionalQuality(String grade) {
  switch (grade.toLowerCase()) {
    case "a":
      return "Excellent nutritional quality";
    case "b":
      return "Good nutritional quality";
    case "c":
      return "Average nutritional quality";
    case "d":
      return "Poor nutritional quality";
    default:
      return "Very poor nutritional quality";
  }
}

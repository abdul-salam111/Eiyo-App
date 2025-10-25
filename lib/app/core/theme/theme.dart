// 1. Theme Controller - Manages theme state and persistence
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neutri_lens/app/core/theme/colors.dart';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();

  final _box = GetStorage();
  final _key = 'isDarkMode';

  // Observable theme mode
  RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Load saved theme preference
    isDarkMode.value = _box.read(_key) ?? false;
  }

  // Toggle theme
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    _box.write(_key, isDarkMode.value);

    // Update GetX theme
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
    _updateSystemUIOverlay();
  }

  // Set specific theme
  void setTheme(bool isDark) {
    isDarkMode.value = isDark;
    _box.write(_key, isDark);
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
    _updateSystemUIOverlay();
  }

  // Update system UI overlay style
  void _updateSystemUIOverlay() {
    // You can customize system UI overlay here
    SystemChrome.setSystemUIOverlayStyle(
      isDarkMode.value ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
    );
  }

  // Get current theme mode
  ThemeMode get themeMode =>
      isDarkMode.value ? ThemeMode.dark : ThemeMode.light;
}

// 2. App Themes - Define your light and dark themes
class AppThemes {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,

    // Color Scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF6750A4),
      brightness: Brightness.light,
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.appLightThemeBackground,
      titleTextStyle: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
      iconTheme: IconThemeData(color: Colors.black),
      
    ),

    // Card Theme
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.inter(color: Colors.black),
      bodyMedium: GoogleFonts.inter(color: Colors.black),
      bodySmall: GoogleFonts.inter(color: Colors.black),
      displayLarge: GoogleFonts.montserrat(color: Colors.black),
      displayMedium: GoogleFonts.montserrat(color: Colors.black),
      displaySmall: GoogleFonts.montserrat(color: Colors.black),
      headlineLarge: GoogleFonts.montserrat(color: Colors.black),
      headlineMedium: GoogleFonts.montserrat(color: Colors.black),
      headlineSmall: GoogleFonts.montserrat(color: Colors.black),
      labelLarge: GoogleFonts.inter(color: Colors.black),
      labelMedium: GoogleFonts.inter(color: Colors.black),
      labelSmall: GoogleFonts.inter(color: Colors.black),
      titleLarge: GoogleFonts.inter(color: Colors.black),
      titleMedium: GoogleFonts.inter(color: Colors.black),
      titleSmall: GoogleFonts.inter(color: Colors.black),
    ),
    // Button Themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,

    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.inter(color: Colors.black),
      bodyMedium: GoogleFonts.inter(color: Colors.black),
      bodySmall: GoogleFonts.inter(color: Colors.black),
      displayLarge: GoogleFonts.montserrat(color: Colors.black),
      displayMedium: GoogleFonts.montserrat(color: Colors.black),
      displaySmall: GoogleFonts.montserrat(color: Colors.black),
      headlineLarge: GoogleFonts.montserrat(color: Colors.black),
      headlineMedium: GoogleFonts.montserrat(color: Colors.black),
      headlineSmall: GoogleFonts.montserrat(color: Colors.black),
      labelLarge: GoogleFonts.inter(color: Colors.black),
      labelMedium: GoogleFonts.inter(color: Colors.black),
      labelSmall: GoogleFonts.inter(color: Colors.black),
      titleLarge: GoogleFonts.inter(color: Colors.black),
      titleMedium: GoogleFonts.inter(color: Colors.black),
      titleSmall: GoogleFonts.inter(color: Colors.black),
    ),
    // Color Scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF6750A4),
      brightness: Brightness.dark,
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.appLightThemeBackground,
            titleTextStyle: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
      iconTheme: IconThemeData(color: Colors.black),


    ),

    // Card Theme
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    // Button Themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  );
}

// 3. Theme Service - Additional theme utilities
class ThemeService {
  // Get theme colors based on current theme
  static ColorScheme get colorScheme => Theme.of(Get.context!).colorScheme;

  // Check if current theme is dark
  static bool get isDarkMode => ThemeController.to.isDarkMode.value;
  static Color getThemedColor({
    required Color lightColor,
    required Color darkColor,
  }) {
    return isDarkMode ? darkColor : lightColor;
  }

  static TextTheme get textTheme => Theme.of(Get.context!).textTheme;
}

/// Extension on BuildContext for easy access to TextTheme styles
extension TextThemeExtension on BuildContext {
  // Get the current TextTheme
  TextTheme get textTheme => Theme.of(this).textTheme;
  // Display Text Styles (Large, prominent text)
  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;

  // Headline Text Styles (High-emphasis text)
  TextStyle? get headlineLarge => textTheme.headlineLarge;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;

  // Title Text Styles (Medium-emphasis text)
  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleSmall => textTheme.titleSmall;

  // Label Text Styles (Small, utilitarian text)

  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelMedium => textTheme.labelMedium;
  TextStyle? get labelSmall => textTheme.labelSmall;

  // Body Text Styles (Default text)
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;
}

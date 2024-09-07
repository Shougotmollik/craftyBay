import 'package:craftybay/presentation/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorSchemeSeed: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primaryColor,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: _outlineInputBorder(),
      enabledBorder: _outlineInputBorder(),
      focusedBorder: _outlineInputBorder(),
      errorBorder: _outlineInputBorder(Colors.red),
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w400,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontSize: 16),
          fixedSize: const Size.fromWidth(double.maxFinite)),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          foregroundColor: AppColors.primaryColor,
          textStyle: const TextStyle(fontSize: 16)),
    ),
  );
}

OutlineInputBorder _outlineInputBorder([Color? color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? AppColors.primaryColor, width: 1),
    borderRadius: BorderRadius.circular(8),
  );
}

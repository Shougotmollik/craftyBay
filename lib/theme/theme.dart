import 'package:craftybay/utils/app_color.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    brightness: Brightness.light,
  ),
  inputDecorationTheme: InputDecorationTheme(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      border: _outlineInputBorder(),
      enabledBorder: _outlineInputBorder(),
      focusedBorder: _outlineInputBorder(),
      errorBorder: _outlineInputBorder(Colors.red),
      hintStyle: const TextStyle(
        color: Colors.black26,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      )),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: Colors.black54,
    ),
    headlineMedium: TextStyle(
      fontSize: 14,
      color: Colors.black38,
      fontWeight: FontWeight.w500,
    ),
  ),
);

// Outline input border =>
OutlineInputBorder _outlineInputBorder([Color? color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? AppColor.primaryColor, width: 1),
    borderRadius: BorderRadius.circular(8),
  );
}

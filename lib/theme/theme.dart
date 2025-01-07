import 'package:craftybay/constants/app_color.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    brightness: Brightness.light,
  ),
  inputDecorationTheme: InputDecorationTheme(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      border: _outlineInputBorder(),
      enabledBorder: _outlineInputBorder(),
      focusedBorder: _outlineInputBorder(),
      errorBorder: _outlineInputBorder(Colors.red),
      hintStyle: const TextStyle(
        color: Colors.grey,
      )),
);

// Outline input border =>
OutlineInputBorder _outlineInputBorder([Color? color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? AppColor.primaryColor, width: 1.5),
    borderRadius: BorderRadius.circular(8),
  );
}

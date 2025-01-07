import 'package:craftybay/theme/theme.dart';
import 'package:craftybay/views/screens/auth/splash_screen.dart';
import 'package:craftybay/views/screens/main_nav_bar/create_review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      home: const CreateReview(),
    );
  }
}

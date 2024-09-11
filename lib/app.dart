import 'package:craftybay/controller_binder.dart';
import 'package:craftybay/presentation/ui/screens/auth_screen/splash_screen.dart';
import 'package:craftybay/presentation/ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      initialBinding: ControllerBinder(),
      home: const SplashScreen(),
    );
  }
}

import 'package:craftybay/presentation/ui/screens/navigation_screen/main_bottom_nav_bar_screen.dart';
import 'package:craftybay/presentation/ui/widgets/app_logo_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Get.off(const MainBottomNavBarScreen());
    }
  }

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Spacer(),
              AppLogoWidgets(),
              Spacer(),
              CircularProgressIndicator(),
              Text(
                "Version :1.0",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

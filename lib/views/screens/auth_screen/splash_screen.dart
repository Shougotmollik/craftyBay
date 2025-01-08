import 'package:craftybay/utils/app_assets_path.dart';
import 'package:craftybay/constants/app_strings.dart';
import 'package:craftybay/route/route_names.dart';
import 'package:craftybay/utils/ui_helper/ui_helper.dart';
import 'package:craftybay/views/widgets/common_widgets/center_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveToNextScreen() async {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.offAndToNamed(RouteNames.emailVerificationScreen);
      },
    );
  }

  @override
  void initState() {
    _moveToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            UiHelper.customImage(
              imageSource: AppAssetsPath.logo,
              isNetwork: false,
            ),
            const Spacer(),
            const CenterCircularProgressIndicator(),
            const SizedBox(height: 20),
            const Text(
              AppStrings.appVersionText,
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}

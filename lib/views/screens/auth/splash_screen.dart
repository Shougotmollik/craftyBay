import 'package:craftybay/constants/app_assets_path.dart';
import 'package:craftybay/constants/app_strings.dart';
import 'package:craftybay/views/widgets/common_widgets/center_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(AppAssetsPath.logo),
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

import 'package:craftybay/constants/app_color.dart';
import 'package:flutter/material.dart';

class CenterCircularProgressIndicator extends StatelessWidget {
  const CenterCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColor.primaryColor,
      ),
    );
  }
}

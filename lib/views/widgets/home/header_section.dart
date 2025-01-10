import 'package:craftybay/utils/app_color.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.headerText,
    required this.onTap,
  });
  final String headerText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerText,
          style:
              Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 22,fontWeight: FontWeight.w700),
        ),
        TextButton(
            onPressed: onTap,
            child: Text(
              'See All',
              style: TextStyle(color: AppColor.primaryColor, fontSize: 16),
            ))
      ],
    );
  }
}

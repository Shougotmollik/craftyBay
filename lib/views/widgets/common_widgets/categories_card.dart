import 'package:craftybay/utils/app_color.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: AppColor.primaryColor.withAlpha(50),
              borderRadius: BorderRadius.circular(12)),
          child: Icon(
            Icons.tv,
            color: AppColor.primaryColor,
            size: 48,
          ),
        ),
        Text(
          'Electronics',
          style: TextStyle(
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

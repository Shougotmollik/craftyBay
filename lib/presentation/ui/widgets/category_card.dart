import 'package:craftybay/presentation/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            Icons.computer,
            color: AppColors.primaryColor,
            size: 48,
          ),
        ),
        const Text(
          "Electronics",
          style: TextStyle(color: AppColors.primaryColor),
        )
      ],
    );
  }
}

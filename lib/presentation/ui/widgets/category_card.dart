import 'package:craftybay/presentation/ui/screens/navigation_screen/product_list_screen.dart';
import 'package:craftybay/presentation/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ProductListScreen(categoryName: "Electronics"));
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.computer,
              color: AppColors.primaryColor,
              size: 42,
            ),
          ),
          const Text(
            "Electronics",
            style: TextStyle(color: AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}

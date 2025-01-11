import 'package:craftybay/controllers/bottom_nav_bar_controller.dart';
import 'package:craftybay/views/widgets/common_widgets/categories_card.dart';
import 'package:craftybay/views/widgets/common_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => backToHome(),
      child: Scaffold(
        appBar: CustomAppBar(
          appBarTitle: 'Categories',
          onTap: () {
            backToHome();
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, childAspectRatio: 0.85),
            itemBuilder: (context, index) {
              return const CategoriesCard();
            },
          ),
        ),
      ),
    );
  }

  void backToHome() {
    Get.find<BottomNavBarController>().selectHomeScreen();
  }
}

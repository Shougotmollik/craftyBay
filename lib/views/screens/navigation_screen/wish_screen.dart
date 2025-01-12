import 'package:craftybay/controllers/bottom_nav_bar_controller.dart';
import 'package:craftybay/views/widgets/common_widgets/custom_app_bar.dart';
import 'package:craftybay/views/widgets/common_widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishScreen extends StatefulWidget {
  const WishScreen({super.key});

  @override
  State<WishScreen> createState() => _WishScreenState();
}

class _WishScreenState extends State<WishScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => backToHome(),
      child: Scaffold(
        appBar: CustomAppBar(
            appBarTitle: 'Wish List',
            onTap: () {
              backToHome();
            }),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
          child: GridView.builder(
            itemCount: 09,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.65,
                crossAxisSpacing: 4,
                mainAxisSpacing: 5,
                mainAxisExtent: 170),
            itemBuilder: (context, index) {
              return ProductCard(
                cardBtnIcon: Icons.delete_outline,
                cardBtnOnTap: () {},
              );
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

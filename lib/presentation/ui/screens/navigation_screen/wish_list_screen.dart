import 'package:craftybay/presentation/state_holders/bottom_nav_bar_controller.dart';
import 'package:craftybay/presentation/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => backToHome(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Wish List"),
            leading: IconButton(
              onPressed: backToHome,
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body: GridView.builder(
            itemCount: 09,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) => const ProductCard(),
          )),
    );
  }

  void backToHome() {
    Get.find<BottomNavBarController>().backToHome();
  }
}

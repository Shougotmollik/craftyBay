import 'package:craftybay/controllers/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.appBarTitle,
    required this.onTap,
  });
  final String appBarTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Get.find<BottomNavBarController>().selectHomeScreen();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      title: Text(
        appBarTitle,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

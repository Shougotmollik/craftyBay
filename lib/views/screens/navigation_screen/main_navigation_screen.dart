import 'package:craftybay/controllers/bottom_nav_bar_controller.dart';
import 'package:craftybay/utils/app_color.dart';
import 'package:craftybay/views/screens/navigation_screen/cart_screen.dart';
import 'package:craftybay/views/screens/navigation_screen/categories_screen.dart';
import 'package:craftybay/views/screens/navigation_screen/home_screen.dart';
import 'package:craftybay/views/screens/navigation_screen/wish_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  final BottomNavBarController _navBarController =
      Get.find<BottomNavBarController>();
  final List<Widget> _screens = const [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    WishScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(builder: (_) {
      return Scaffold(
        body: _screens[_navBarController.selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _navBarController.selectedIndex,
          onTap: _navBarController.changeIndex,
          unselectedItemColor: Colors.black38,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColor.primaryColor,
          iconSize: 30,
          selectedFontSize: 13,
          unselectedFontSize: 11,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.widgets_outlined), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined), label: 'Wish'),
          ],
        ),
      );
    });
  }
}

import 'package:craftybay/presentation/state_holders/bottom_nav_bar_controller.dart';
import 'package:craftybay/presentation/ui/screens/navigation_screen/cart_screen.dart';
import 'package:craftybay/presentation/ui/screens/navigation_screen/categories_screen.dart';
import 'package:craftybay/presentation/ui/screens/navigation_screen/home_screen.dart';
import 'package:craftybay/presentation/ui/screens/navigation_screen/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  final BottomNavBarController _navBarController =
      Get.find<BottomNavBarController>();

  final List<Widget> _screens = const [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    WishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(builder: (_) {
      return Scaffold(
        body: _screens[_navBarController.selectedIndex],
        bottomNavigationBar: NavigationBar(
          height: 72,
          backgroundColor: Colors.white54,
          selectedIndex: _navBarController.selectedIndex,
          onDestinationSelected: _navBarController.changeIndex,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.category_outlined), label: "Category"),
            NavigationDestination(
                icon: Icon(Icons.shopping_basket_outlined), label: "Cart"),
            NavigationDestination(
                icon: Icon(Icons.card_giftcard_rounded), label: "Wish"),
          ],
        ),
      );
    });
  }
}

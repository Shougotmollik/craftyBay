import 'package:flutter/material.dart';

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
        onPressed: onTap,
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
      title: Text(
        appBarTitle,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenRefreshController extends GetxController {
  final ScrollController scrollController = ScrollController();
  void refreshAndScrollToTop() {
    // Scroll to the top
    scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );

    // Refresh logic
    update();
  }
}

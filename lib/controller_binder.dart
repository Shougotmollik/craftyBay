import 'package:craftybay/controllers/bottom_nav_bar_controller.dart';
import 'package:craftybay/controllers/increment_decrement_button_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavBarController());
    Get.lazyPut(() => IncrementDecrementButtonController());
  }
}

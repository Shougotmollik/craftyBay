import 'package:craftybay/data/services/network_caller.dart';
import 'package:craftybay/presentation/state_holders/bottom_nav_bar_controller.dart';
import 'package:craftybay/presentation/state_holders/increment_decrement_button_controller.dart';
import 'package:craftybay/presentation/state_holders/slider_list_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavBarController());
    Get.lazyPut(() => IncrementDecrementButtonController());
    Get.put(NetworkCaller());
    Get.lazyPut(() => SliderListController());
  }
}

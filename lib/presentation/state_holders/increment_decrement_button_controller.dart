import 'package:get/get.dart';

class IncrementDecrementButtonController extends GetxController {
  int _initialValue = 1;

  int get initialValue => _initialValue;

  void increment() {
    _initialValue++;
    update();
  }
}

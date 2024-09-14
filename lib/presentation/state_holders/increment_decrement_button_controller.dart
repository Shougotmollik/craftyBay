import 'package:get/get.dart';

class IncrementDecrementButtonController extends GetxController {
  int _initialValue = 01;

  int get initialValue => _initialValue;

  void increment() {
    if (_initialValue < 20) {
      _initialValue++;
      update();
    }
  }

  void decrement() {
    if (_initialValue > 00) {
      _initialValue--;
      update();
    }
  }
}

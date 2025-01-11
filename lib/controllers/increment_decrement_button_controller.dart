import 'package:get/get.dart';

class IncrementDecrementButtonController extends GetxController {
  int _counter = 01;
  int get counter => _counter;

  void increase() {
    if (_counter < 15) {
      _counter++;
    }
    update();
  }

  void decrease() {
    if (_counter > 1) {
      _counter--;
    }
    update();
  }

  String get formattedCounter => _counter.toString().padLeft(2, '0');
}

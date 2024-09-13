import 'package:craftybay/presentation/state_holders/increment_decrement_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncrementDecrementButton extends StatefulWidget {
  const IncrementDecrementButton({super.key});

  @override
  State<IncrementDecrementButton> createState() =>
      _IncrementDecrementButtonState();
}

class _IncrementDecrementButtonState extends State<IncrementDecrementButton> {

  final IncrementDecrementButtonController _buttonController=Get.find<IncrementDecrementButtonController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Row(
        children: [
          IconButton(onPressed: () {
            _buttonController.increment;
          }, icon: const Icon(Icons.remove)),
          Text(_buttonController.initialValue.toString()),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add))
        ],
      ),
    );
  }
}

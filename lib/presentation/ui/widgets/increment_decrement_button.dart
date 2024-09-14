import 'package:craftybay/presentation/state_holders/increment_decrement_button_controller.dart';
import 'package:craftybay/presentation/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncrementDecrementButton extends StatefulWidget {
  const IncrementDecrementButton({super.key});

  @override
  State<IncrementDecrementButton> createState() =>
      _IncrementDecrementButtonState();
}

class _IncrementDecrementButtonState extends State<IncrementDecrementButton> {
  final IncrementDecrementButtonController _buttonController =
      Get.put(IncrementDecrementButtonController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 40,
      width: 100,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.75),
                borderRadius: BorderRadius.circular(8)),
            child: IconButton(
                onPressed: _buttonController.decrement,
                icon: const Icon(
                  Icons.remove,
                  size: 22,
                  color: Colors.white,
                )),
          ),
          GetBuilder<IncrementDecrementButtonController>(builder: (context) {
            return Text(
              "${_buttonController.initialValue}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            );
          }),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.75),
                borderRadius: BorderRadius.circular(8)),
            child: IconButton(
              onPressed: _buttonController.increment,
              icon: const Icon(
                Icons.add,
                size: 22,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

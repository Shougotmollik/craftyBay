import 'package:craftybay/controllers/increment_decrement_button_controller.dart';
import 'package:craftybay/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncrementDecrementButton extends StatefulWidget {
  const IncrementDecrementButton({
    super.key,
  });

  @override
  State<IncrementDecrementButton> createState() =>
      _IncrementDecrementButtonState();
}

final IncrementDecrementButtonController _buttonController =
    Get.find<IncrementDecrementButtonController>();

class _IncrementDecrementButtonState extends State<IncrementDecrementButton> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<IncrementDecrementButtonController>(builder: (_) {
      return SizedBox(
        height: 30,
        width: 80,
        child: Row(
          spacing: 4,
          children: [
            CustomButton(
              btnIcon: Icons.remove,
              onTap: () {
                _buttonController.decrease();
              },
            ),
            Text(
              _buttonController.formattedCounter,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            CustomButton(
              btnIcon: Icons.add,
              onTap: () {
                _buttonController.increase();
              },
            ),
          ],
        ),
      );
    });
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnIcon,
    required this.onTap,
  });
  final IconData btnIcon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(4)),
        child: Icon(
          btnIcon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}

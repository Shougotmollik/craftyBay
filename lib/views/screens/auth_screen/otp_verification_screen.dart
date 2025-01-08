import 'package:craftybay/route/route_names.dart';
import 'package:craftybay/utils/app_assets_path.dart';
import 'package:craftybay/utils/app_color.dart';
import 'package:craftybay/utils/ui_helper/ui_helper.dart';
import 'package:craftybay/views/widgets/common_widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
final TextEditingController _otpTEController = TextEditingController();

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Form(
            key: _globalKey,
            child: Column(
              spacing: 8,
              children: [
                const SizedBox(height: 180),
                UiHelper.customImage(
                  imageSource: AppAssetsPath.logo,
                  height: 100,
                ),
                Text('Enter OTP Code',
                    style: Theme.of(context).textTheme.headlineLarge),
                Text('A 4 Digit OTP has been Sent',
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 4),
                SizedBox(
                  width: 250,
                  child: PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    hapticFeedbackTypes: HapticFeedbackTypes.vibrate,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 45,
                      activeFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      selectedColor: Colors.green,
                      inactiveColor: AppColor.primaryColor,
                      inactiveFillColor: Theme.of(context).cardColor,
                      borderWidth: 1,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Theme.of(context).cardColor,
                    enableActiveFill: true,
                    controller: _otpTEController,
                    appContext: context,
                  ),
                ),
                const SizedBox(height: 4),
                CustomSubmitButton(btnText: 'Next', onTap: _nextButton)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _nextButton() {
    Get.toNamed(RouteNames.completeProfileScreen);
  }
}

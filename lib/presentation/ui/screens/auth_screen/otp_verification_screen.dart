import 'package:craftybay/presentation/ui/screens/auth_screen/complete_profile_screen.dart';
import 'package:craftybay/presentation/ui/utils/colors.dart';
import 'package:craftybay/presentation/ui/widgets/app_logo_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 84),
            const AppLogoWidgets(),
            const SizedBox(height: 24),
            Text(
              "Enter OTP Code",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 6),
            Text(
              "A 6 Digit OTP Code has been sent",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black54),
            ),
            const SizedBox(height: 16),
            PinCodeTextField(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 65,
                fieldWidth: 50,
                activeFillColor: Colors.white,
                selectedFillColor: Colors.white,
                selectedColor: Colors.green,
                inactiveColor: AppColors.primaryColor,
                inactiveFillColor: Colors.white,
              ),
              animationDuration: const Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              controller: _otpTEController,
              appContext: context,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _nextButton,
              child: const Text("Next"),
            ),
            const SizedBox(height: 32),
            RichText(
                text: TextSpan(
                    text: "This code will be expire in ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey),
                    children: const [
                  TextSpan(
                      text: "120s",
                      style: TextStyle(color: AppColors.primaryColor))
                ])),
            TextButton(onPressed: () {}, child: const Text("Resend Code"))
          ],
        ),
      ),
    );
  }
  void _nextButton(){
    Get.to(()=>const CompleteProfileScreen());
  }
}

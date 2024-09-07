import 'package:craftybay/presentation/ui/screens/auth_screen/otp_verification_screen.dart';
import 'package:craftybay/presentation/ui/widgets/app_logo_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();
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
              "Welcome Back",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 6),
            Text(
              "Please Enter Your Email Address",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black54),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _emailTEController,
              decoration: const InputDecoration(hintText: "Email Address"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _nextButton,
              child: const Text("Next"),
            )
          ],
        ),
      ),
    );
  }

  void _nextButton() {
    Get.to(() => const OtpVerificationScreen());
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}

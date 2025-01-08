import 'package:craftybay/constants/app_validator.dart';
import 'package:craftybay/utils/app_assets_path.dart';
import 'package:craftybay/route/route_names.dart';
import 'package:craftybay/utils/ui_helper/ui_helper.dart';
import 'package:craftybay/views/widgets/common_widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
final TextEditingController _emailTEController = TextEditingController();

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
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
                Text('Welcome Back',
                    style: Theme.of(context).textTheme.headlineLarge),
                Text('Please Enter Your Email Address',
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 4),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Please enter email address';
                    }
                    if (AppValidator.emailRegExp.hasMatch(value!) == false) {
                      return 'Invalid email address';
                    }
                    return null;
                  },
                  controller: _emailTEController,
                  decoration: const InputDecoration(hintText: 'Email Address'),
                ),
                const SizedBox(height: 8),
                CustomSubmitButton(btnText: 'Next', onTap: _nextButton)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _nextButton() {
    Get.toNamed(RouteNames.otpVerificationScreen);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}

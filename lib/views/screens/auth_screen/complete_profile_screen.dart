import 'package:craftybay/utils/app_assets_path.dart';
import 'package:craftybay/utils/ui_helper/ui_helper.dart';
import 'package:craftybay/views/widgets/common_widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
final TextEditingController _firstNameTEController = TextEditingController();
final TextEditingController _lastNameTEController = TextEditingController();
final TextEditingController _mobileTEController = TextEditingController();
final TextEditingController _cityTEController = TextEditingController();
final TextEditingController _shippingAddressTEController =
    TextEditingController();

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Form(
            key: _globalKey,
            child: SingleChildScrollView(
              child: Column(
                spacing: 12,
                children: [
                  UiHelper.customImage(
                    imageSource: AppAssetsPath.logo,
                    height: 100,
                  ),
                  Text('Complete Profile',
                      style: Theme.of(context).textTheme.headlineLarge),
                  Text('Get started with us with your details',
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 4),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: _firstNameTEController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Enter your first name';
                      }
                      return '';
                    },
                    decoration: const InputDecoration(hintText: 'First Name'),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Enter your last name';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    controller: _lastNameTEController,
                    decoration: const InputDecoration(hintText: 'Last Name'),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Enter your mobile number';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _mobileTEController,
                    decoration: const InputDecoration(hintText: 'Mobile'),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    controller: _cityTEController,
                    decoration: const InputDecoration(hintText: 'City'),
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Enter your city address';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    controller: _shippingAddressTEController,
                    maxLines: 4,
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Enter your Shipping address';
                      }
                      return null;
                    },
                    decoration:
                        const InputDecoration(hintText: 'Shipping Address'),
                  ),
                  const SizedBox(height: 8),
                  CustomSubmitButton(
                      btnText: 'Complete', onTap: _completeButton)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _completeButton() {}
}

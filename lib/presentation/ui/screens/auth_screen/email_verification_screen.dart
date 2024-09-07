import 'package:craftybay/presentation/ui/widgets/app_logo_widgets.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
          children: [
           const AppLogoWidgets(),
          ],


      ),
    );
  }
}

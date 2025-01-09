import 'package:craftybay/controller_binder.dart';
import 'package:craftybay/route/route_names.dart';
import 'package:craftybay/route/routes.dart';
import 'package:craftybay/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      getPages: Routes.pages,
      initialRoute: RouteNames.splashScreen,
      defaultTransition: Transition.noTransition,
      useInheritedMediaQuery: true,
      initialBinding: ControllerBinder(),
    );
  }
}

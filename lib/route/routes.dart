import 'package:craftybay/route/route_names.dart';
import 'package:craftybay/views/screens/auth_screen/complete_profile_screen.dart';
import 'package:craftybay/views/screens/auth_screen/email_verification_screen.dart';
import 'package:craftybay/views/screens/auth_screen/otp_verification_screen.dart';
import 'package:craftybay/views/screens/auth_screen/splash_screen.dart';
import 'package:craftybay/views/screens/navigation_screen/home_screen.dart';

import 'package:get/get.dart';

class Routes {
  static final pages = [
    GetPage(
      name: RouteNames.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteNames.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: RouteNames.emailVerificationScreen,
      page: () => const EmailVerificationScreen(),
    ),
    GetPage(
      name: RouteNames.otpVerificationScreen,
      page: () => const OtpVerificationScreen(),
    ),
    GetPage(
      name: RouteNames.completeProfileScreen,
      page: () => const CompleteProfileScreen(),
    ),
  ];
}

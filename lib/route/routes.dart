import 'package:craftybay/route/route_names.dart';
import 'package:craftybay/views/screens/auth_screen/complete_profile_screen.dart';
import 'package:craftybay/views/screens/auth_screen/email_verification_screen.dart';
import 'package:craftybay/views/screens/auth_screen/otp_verification_screen.dart';
import 'package:craftybay/views/screens/auth_screen/splash_screen.dart';
import 'package:craftybay/views/screens/navigation_screen/create_review_screen.dart';
import 'package:craftybay/views/screens/navigation_screen/home_screen.dart';
import 'package:craftybay/views/screens/navigation_screen/main_navigation_screen.dart';
import 'package:craftybay/views/screens/navigation_screen/product_details_screen.dart';
import 'package:craftybay/views/screens/navigation_screen/review_screen.dart';

import 'package:get/get.dart';

class Routes {
  static final pages = [
    GetPage(
      name: RouteNames.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteNames.mainNavigationScreen,
      page: () => const MainNavigationScreen(),
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
    GetPage(
      name: RouteNames.productDetailsScreen,
      page: () => const ProductDetailsScreen(),
    ),
    GetPage(
      name: RouteNames.reviewScreen,
      page: () => const ReviewScreen(),
    ),
    GetPage(
      name: RouteNames.createReviewScreen,
      page: () => const CreateReviewScreen(),
    )
  ];
}

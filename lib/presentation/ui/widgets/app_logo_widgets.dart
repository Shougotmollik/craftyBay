import 'package:craftybay/presentation/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogoWidgets extends StatelessWidget {
  const AppLogoWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetsPath.appLogo,
      width: 100,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UiHelper {
  static Widget customImage({
    required String imageSource,
    bool isNetwork = false,
    double? height,
    double? width,
    BoxFit boxFit = BoxFit.cover,
  }) {
    if (isNetwork) {
      return SvgPicture.network(
        imageSource,
        height: height,
        width: width,
        fit: boxFit,
      );
    } else {
      return SvgPicture.asset(
        imageSource,
        height: height,
        width: width,
        fit: boxFit,
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

ScreenType getCustomScreenType(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth >= 1024) {
    return ScreenType.desktop;
  } else if (screenWidth >= 600) {
    return ScreenType.tablet;
  } else {
    return ScreenType.mobile;
  }
}

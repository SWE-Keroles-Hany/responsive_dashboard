import 'package:flutter/foundation.dart';
import 'package:responsive_dashboard/helpers/size_config.dart';

double getResponsiveFontSize({required double fontSize}) {
  final scaleFactor = getScaleFactor();
  final responsiveFontSize = fontSize * scaleFactor;
  final lowerLimit = fontSize * 0.8; // Minimum font size
  final upperLimit = fontSize * 1.2; // Maximum font size
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  final dispather = PlatformDispatcher.instance.views.first.physicalSize.width;
  final devicePixelRatio =
      PlatformDispatcher.instance.views.first.devicePixelRatio;
  final width = dispather / devicePixelRatio;

  if (width < SizeConfig.tabletpWidth) {
    return width / 800; // Mobile
  } else if (width < SizeConfig.desktopWidth) {
    return width / 1100; // Tablet
  } else {
    return width / 1500; // Desktop
  }

  /* 
  * Scale Factors : 
  1) Mobile => 400
  2) Tablet => 700
  3) Desktop => 1000
  */
}

import 'package:flutter/cupertino.dart';

class SizeConfig {
  static const double desktopWidth = 1300;
  static const double tabletpWidth = 900;
  static late double width, height;

  static void init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}

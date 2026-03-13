import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';
import 'package:responsive_dashboard/helpers/get_responsive_fsize.dart';

class AppStyles {
  static TextStyle get semiBold16 => TextStyle(
    color: ColorManager.secondary,
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontWeight: FontWeight.w600,
  );
  static TextStyle get regular12 => TextStyle(
    color: ColorManager.secondary,
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 12),
    fontWeight: FontWeight.w400,
  );

  static TextStyle get semiBold20 => TextStyle(
    color: ColorManager.secondary,
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontWeight: FontWeight.w600,
  );
  static TextStyle get semiBold18 => TextStyle(
    color: ColorManager.primary,
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontWeight: FontWeight.w600,
  );
  static TextStyle get bold16 => TextStyle(
    color: ColorManager.primary,
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontWeight: FontWeight.w700,
  );
  static TextStyle get regular16 => TextStyle(
    color: ColorManager.secondary,
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontWeight: FontWeight.w400,
  );
  static TextStyle get medium16 => TextStyle(
    color: ColorManager.secondary,
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontWeight: FontWeight.w500,
  );
  static TextStyle get regular14 => TextStyle(
    color: ColorManager.mediumGrey,
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontWeight: FontWeight.w400,
  );
  static TextStyle get semiBold24 => TextStyle(
    color: ColorManager.primary,
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontWeight: FontWeight.w600,
  );
}

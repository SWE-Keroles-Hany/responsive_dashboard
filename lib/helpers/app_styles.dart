import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';

class AppStyles {
  static TextStyle get semiBold16 => TextStyle(
    color: ColorManager.secondary,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle get regular12 => const TextStyle(
    color: ColorManager.secondary,
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get semiBold20 => const TextStyle(
    color: ColorManager.secondary,
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle get semiBold18 => const TextStyle(
    color: ColorManager.primary,
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle get bold16 => const TextStyle(
    color: ColorManager.primary,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
  static TextStyle get regular16 => const TextStyle(
    color: ColorManager.secondary,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle get medium16 => const TextStyle(
    color: ColorManager.secondary,
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle get regular14 => const TextStyle(
    color: ColorManager.mediumGrey,
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle get semiBold24 => const TextStyle(
    color: ColorManager.primary,
    fontFamily: 'Montserrat',
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
}

import 'package:flutter/material.dart';

import '../helpers/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.bgColor,
    required this.titleColor,
  });
  final String label;
  final Color bgColor;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: Size(double.infinity, 62),

        // padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        backgroundColor: bgColor,
      ),
      onPressed: () {},
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          label,
          style: AppStyles.semiBold18.copyWith(color: titleColor),
        ),
      ),
    );
  }
}

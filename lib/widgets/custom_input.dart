import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';

import '../helpers/app_styles.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({super.key, required this.hintText, required this.label});
  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,

          child: Text(
            label,
            style: AppStyles.medium16.copyWith(color: ColorManager.secondary),
          ),
        ),
        SizedBox(height: 12),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorManager.lightGrey,
            hintText: hintText,
            hintStyle: AppStyles.regular16.copyWith(
              color: ColorManager.mediumGrey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}

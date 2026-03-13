import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';

class ExpensesRanges extends StatelessWidget {
  const ExpensesRanges({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorManager.lightBorderColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text("Monthly", style: AppStyles.medium16),
            ),
          ),
          Flexible(
            child: Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 30,
              color: ColorManager.secondary,
            ),
          ),
        ],
      ),
    );
  }
}

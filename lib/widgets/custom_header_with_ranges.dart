import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/widgets/expenses_ranges.dart';

class CustomHeaderWithRanges extends StatelessWidget {
  const CustomHeaderWithRanges({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(title, style: AppStyles.semiBold20),
          ),
        ),

        SizedBox(width: 10),
        Flexible(child: ExpensesRanges()),
      ],
    );
  }
}

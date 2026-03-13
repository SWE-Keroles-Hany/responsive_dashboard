import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Transaction History",
              style: AppStyles.semiBold20.copyWith(),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "See all",
              style: AppStyles.medium16.copyWith(color: ColorManager.primary),
            ),
          ),
        ),
      ],
    );
  }
}

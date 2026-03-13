import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';
import 'package:responsive_dashboard/widgets/custom_backgroud.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroud(
      color: ColorManager.lightGrey,
      padding: 16,
      child: ListTile(
        trailing: FittedBox(
          fit: BoxFit.scaleDown,

          child: FittedBox(
            fit: BoxFit.scaleDown,

            child: Text(
              "\$ 20,129",
              style: AppStyles.semiBold20.copyWith(color: ColorManager.softRed),
            ),
          ),
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,

          child: Text(title, style: AppStyles.semiBold16),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,

          child: FittedBox(
            fit: BoxFit.scaleDown,

            child: Text(
              subTitle,
              style: AppStyles.regular16.copyWith(
                color: ColorManager.mediumGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

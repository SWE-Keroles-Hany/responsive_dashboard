import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';
import 'package:responsive_dashboard/helpers/image_assets';
import 'package:responsive_dashboard/widgets/expenses_item_icon.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    this.isActive = false,
    required this.icon,
    required this.title,
    required this.date,
    required this.price,
  });
  final bool isActive;
  final String icon, title, date;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.lightBorderColor),
        borderRadius: BorderRadius.circular(12),
        color: isActive ? ColorManager.primary : ColorManager.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExpensesItemIcon(isActive: isActive, icon: icon),
              SvgPicture.asset(Assets.iconsArrowRight),
            ],
          ),
          SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style: AppStyles.semiBold16.copyWith(
                color: isActive ? ColorManager.white : ColorManager.secondary,
              ),
            ),
          ),
          SizedBox(height: 8),

          FittedBox(
            fit: BoxFit.scaleDown,

            child: Text(
              date,
              style: AppStyles.regular14.copyWith(
                color: isActive ? ColorManager.white : ColorManager.mediumGrey,
              ),
            ),
          ),
          SizedBox(height: 16),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "\$$price",
              style: AppStyles.semiBold24.copyWith(
                color: isActive ? ColorManager.white : ColorManager.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

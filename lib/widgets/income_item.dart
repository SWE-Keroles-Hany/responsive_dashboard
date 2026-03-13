import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: FittedBox(
        fit: BoxFit.scaleDown,

        child: Text(
          "40%",
          style: AppStyles.medium16.copyWith(color: ColorManager.primary),
        ),
      ),
      title: Row(
        // mainAxisAlignment: ,
        children: [
          SvgPicture.asset("assets/icons/cicle_point.svg"),
          SizedBox(width: 12),
          FittedBox(
            fit: BoxFit.scaleDown,

            child: Text("Design service", style: AppStyles.regular16),
          ),
        ],
      ),
    );
  }
}

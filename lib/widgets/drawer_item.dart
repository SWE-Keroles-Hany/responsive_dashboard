import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
    this.isActive = false,
  });
  final String title, icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: isActive
          ? Container(
              width: 3.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),

                color: ColorManager.secondary,
              ),
            )
          : null,
      leading: SvgPicture.asset(icon),
      title: Text(
        title,
        style: isActive ? AppStyles.bold16 : AppStyles.regular16,
      ),
    );
  }
}

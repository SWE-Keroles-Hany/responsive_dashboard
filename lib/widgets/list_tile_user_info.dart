import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';

class ListTileUserInfo extends StatelessWidget {
  const ListTileUserInfo({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });
  final String title, subTitle, icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: ColorManager.lightGrey,
      leading: SvgPicture.asset(icon),
      title: Text(title, style: AppStyles.semiBold16),
      subtitle: Text(subTitle, style: AppStyles.regular12),
    );
  }
}

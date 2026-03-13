import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';

class ExpensesItemIcon extends StatelessWidget {
  const ExpensesItemIcon({
    super.key,
    required this.isActive,
    required this.icon,
  });

  final bool isActive;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: isActive ? ColorManager.lightBlue : ColorManager.lightGrey,
              shape: BoxShape.circle,
            ),
            child: Center(child: SvgPicture.asset(icon)),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,

              child: Text(
                "Quick Invoice",
                style: AppStyles.semiBold20.copyWith(),
              ),
            ),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: ColorManager.lightGrey,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: ColorManager.primary),
            ),
          ],
        ),
      ],
    );
  }
}

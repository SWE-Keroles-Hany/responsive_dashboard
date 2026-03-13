import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/custom_input.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomInput(
                hintText: "Type customer name",
                label: "Customer Name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomInput(
                hintText: "Type customer Email",
                label: "Customer Email",
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomInput(
                hintText: "Type Item name",
                label: "Item name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomInput(
                hintText: "Type Item mount",
                label: "Item mount",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: FittedBox(
                  fit: BoxFit.scaleDown,

                  child: Text(
                    "Add more details",
                    style: AppStyles.semiBold18.copyWith(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: CustomButton(
                label: "Send Money",
                bgColor: ColorManager.primary,
                titleColor: ColorManager.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

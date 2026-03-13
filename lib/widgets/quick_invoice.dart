import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';
import 'package:responsive_dashboard/widgets/custom_backgroud.dart';
import 'package:responsive_dashboard/widgets/latest_transactions.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';

import 'quick_invoice_form.dart';

class QuickInvoice extends StatelessWidget {
  QuickInvoice({super.key});
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomBackgroud(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //! header
          QuickInvoiceHeader(),
          const SizedBox(height: 24),
          FittedBox(
            fit: BoxFit.scaleDown,

            child: Text(
              "Latest Transactions",
              style: AppStyles.semiBold18.copyWith(
                color: ColorManager.secondary,
              ),
              //users
            ),
          ),
          SizedBox(height: 12),

          LatestTransactions(),
          SizedBox(height: 24),
          Divider(color: ColorManager.lightBorderColor),
          SizedBox(height: 24),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}

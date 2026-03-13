import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_and_income_section.dart';

class DesktopLayoutDashboard extends StatelessWidget {
  const DesktopLayoutDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //! first drawer
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        //! second part
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(top: 40, bottom: 32),
                    child: AllExpensesAndQuickInvoice(),
                  ),
                ),
                SizedBox(width: 24),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 40),
                    child: MyCardAndTrasnactionAndIcomSection(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

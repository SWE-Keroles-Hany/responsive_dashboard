import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_header_with_ranges.dart';
import 'package:responsive_dashboard/widgets/custom_backgroud.dart';
import 'package:responsive_dashboard/widgets/expenses_items.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroud(
      child: Column(
        children: [
          //! header
          CustomHeaderWithRanges(title: "All Expenses"),
          SizedBox(height: 16),
          //! items
          ExpensesItems(),
        ],
      ),
    );
  }
}

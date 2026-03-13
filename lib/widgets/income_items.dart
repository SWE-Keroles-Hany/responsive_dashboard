import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_item.dart';

class IncomeItems extends StatelessWidget {
  const IncomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: List.generate(3, (index) => IncomeItem()));
  }
}

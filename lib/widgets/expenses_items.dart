import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/image_assets';
import 'package:responsive_dashboard/widgets/expenses_item.dart';

class ExpensesItems extends StatelessWidget {
  ExpensesItems({super.key});
  final List<ExpensesItem> items = [
    ExpensesItem(
      icon: Assets.iconsMoneys,
      date: "April 2022",
      title: "Balance",
      price: 20129.0,
    ),
    ExpensesItem(
      icon: Assets.iconsCardReceive,
      date: "April 2023",
      title: "Income",
      price: 15000.0,
    ),
    ExpensesItem(
      icon: Assets.iconsCardSend,
      date: "April 2024",
      title: "Expenses",
      price: 5129.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: SingleChildScrollView(
        child: Row(
          children: List.generate(3, (index) {
            return Expanded(
              child: ExpensesItem(
                title: items[index].title,
                date: items[index].date,
                price: items[index].price,
                icon: items[index].icon,
                isActive: index == 0,
              ),
            );
          }),
        ),
      ),
    );
  }
}

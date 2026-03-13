import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';
import 'package:responsive_dashboard/helpers/size_config.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_and_income_section.dart';

class MobileLayoutDashboard extends StatefulWidget {
  const MobileLayoutDashboard({super.key});

  @override
  State<MobileLayoutDashboard> createState() => _MobileLayoutDashboardState();
}

class _MobileLayoutDashboardState extends State<MobileLayoutDashboard> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobileActive = (width < SizeConfig.tabletpWidth);
    return Scaffold(
      backgroundColor: ColorManager.bgColor,
      drawer: CustomDrawer(),
      appBar: isMobileActive
          ? AppBar(
              backgroundColor: ColorManager.bgColor,
              leading: IconButton(
                onPressed: () {
                  _globalKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      key: _globalKey,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 14),

          child: Column(
            children: [
              AllExpensesAndQuickInvoice(),
              MyCardAndTrasnactionAndIcomSection(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/mobile_layourt_dashboard.dart';

class TabletLayoutDashboard extends StatelessWidget {
  const TabletLayoutDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 14),
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 14),
          Expanded(flex: 3, child: MobileLayoutDashboard()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(children: [Expanded(child: CustomDrawer())]),
    );
  }
}

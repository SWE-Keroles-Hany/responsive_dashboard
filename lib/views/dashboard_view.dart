import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/desktop_dashboard.dart';
import 'package:responsive_dashboard/views/mobile_dashboard.dart';
import 'package:responsive_dashboard/views/tablet_dashboard.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        desktopLayout: (context) => DesktopDashboard(),
        tabletLayout: (context) => TabletDashboard(),
        mobileLayout: (context) => MobileDashboard(),
      ),
    );
  }
}

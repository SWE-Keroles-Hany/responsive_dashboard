import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';
import 'package:responsive_dashboard/helpers/size_config.dart';
import 'package:responsive_dashboard/views/desktop_layout_dashboard.dart';
import 'package:responsive_dashboard/views/tablet_layout_dashboard.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/views/mobile_layourt_dashboard.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: ColorManager.bgColor,
      body: AdaptiveLayout(
        desktopLayout: (context) => DesktopLayoutDashboard(),
        tabletLayout: (context) => TabletLayoutDashboard(),
        mobileLayout: (context) => MobileLayoutDashboard(),
      ),
    );
  }
}

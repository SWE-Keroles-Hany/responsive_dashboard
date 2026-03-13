import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return LayoutBuilder(
      builder: (context, constraints) {
        print("layout : ${constraints.maxWidth}");
        print("width : $width");

        if (width <= SizeConfig.tabletpWidth) {
          return mobileLayout(context);
        } else if (width <= SizeConfig.desktopWidth) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}

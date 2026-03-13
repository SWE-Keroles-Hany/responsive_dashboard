import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';

class CustomBackgroud extends StatelessWidget {
  const CustomBackgroud({
    super.key,
    required this.child,
    this.padding,
    this.color,
  });
  final Widget child;
  final double? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 24),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: color ?? ColorManager.white,
      ),
      child: child,
    );
  }
}

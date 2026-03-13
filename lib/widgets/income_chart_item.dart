import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IcomeChartItem extends StatelessWidget {
  const IcomeChartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/icons/statistics_circle.svg");
  }
}

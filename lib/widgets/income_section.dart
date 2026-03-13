import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/helpers/size_config.dart';
import 'package:responsive_dashboard/widgets/custom_backgroud.dart';
import 'package:responsive_dashboard/widgets/custom_header_with_ranges.dart';
import 'package:responsive_dashboard/widgets/income_chart_item.dart';
import 'package:responsive_dashboard/widgets/income_items.dart';

class IncomSection extends StatelessWidget {
  const IncomSection({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.sizeOf(context).width;

    return CustomBackgroud(
      padding: 20,
      child: Column(
        children: [
          //! income header
          CustomHeaderWithRanges(title: "Income"),
          ((SizeConfig.width < 1650 &&
                      SizeConfig.width >= SizeConfig.desktopWidth) ||
                  SizeConfig.width <= SizeConfig.tabletpWidth)
              ? Column(
                  children: [
                    const SizedBox(height: 12),
                    IcomeChartItem(),
                    const SizedBox(height: 12),
                    IncomeItems(),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: IcomeChartItem()),
                    Expanded(flex: 3, child: IncomeItems()),
                  ],
                ),
        ],
      ),
    );
  }
}

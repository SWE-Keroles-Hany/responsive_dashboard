import 'package:flutter/material.dart';
import 'package:page_indicator_plus/page_indicator_plus.dart';
import 'package:responsive_dashboard/helpers/app_styles.dart';
import 'package:responsive_dashboard/helpers/color_manager.dart';
import 'package:responsive_dashboard/widgets/custom_backgroud.dart';
import 'package:responsive_dashboard/widgets/my_card_page_view.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_history_item.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  MyCardAndTransactionHistory({super.key});
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return CustomBackgroud(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,

            child: Text("My card", style: AppStyles.semiBold20.copyWith()),
          ),
          SizedBox(height: 20),
          MyCardPageView(controller: controller),
          const SizedBox(height: 19),
          PageIndicator(
            size: 15,
            activeColor: ColorManager.primary,
            controller: controller,
            count: 3,
          ),
          const SizedBox(height: 20),
          Divider(color: ColorManager.lightBorderColor),
          const SizedBox(height: 20),

          TransactionHistoryHeader(),
          const SizedBox(height: 20),

          FittedBox(
              fit: BoxFit.scaleDown,

            child: Text(
              "13 April 2022",
              style: AppStyles.medium16.copyWith(color: ColorManager.mediumGrey),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: List.generate(
              4,
              (index) => Container(
                margin: EdgeInsets.only(top: 12),
                child: TransactionHistoryItem(
                  title: "Cash Withdrawal",
                  subTitle: "13 Apr, 2022 ",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

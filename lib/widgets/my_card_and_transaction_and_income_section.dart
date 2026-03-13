import 'package:flutter/widgets.dart';

import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_trasaction_history.dart';

class MyCardAndTrasnactionAndIcomSection extends StatelessWidget {
  const MyCardAndTrasnactionAndIcomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCardAndTransactionHistory(),
        SizedBox(height: 24),
        IncomSection(),
      ],
    );
  }
}

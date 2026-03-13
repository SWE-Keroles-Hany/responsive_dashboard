import 'package:flutter/widgets.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          AspectRatio(
            aspectRatio: 420 / 215,
            child: Image.asset("assets/images/card.png"),
          ),
          AspectRatio(
            aspectRatio: 420 / 215,
            child: Image.asset("assets/images/card.png"),
          ),
          AspectRatio(
            aspectRatio: 420 / 215,
            child: Image.asset("assets/images/card.png"),
          ),
        ],
      ),
    );
  }
}

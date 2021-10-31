import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppIndicator extends StatelessWidget {
  final PageController controller;
  final int count;

  const AppIndicator({Key? key, required this.controller, required this.count,})
      : super(key: key);

  @override
  Widget build(BuildContext context) =>
      SmoothPageIndicator(
        controller: controller,
        count: count,
        effect: WormEffect(
          activeDotColor: Theme
              .of(context)
              .primaryColor,
          dotColor: Colors.grey[300]!,
          dotHeight: 10,
          dotWidth: 10,
        ),
      );
}

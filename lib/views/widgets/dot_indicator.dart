import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});

  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>  Container(
          margin: const EdgeInsets.only(left:6),
          padding: const EdgeInsets.only(right: 2.0),
          child: CustomDotIndicator(
            isActive: index==currentPageIndex,
          ),
        ),
      ),
    );
  }
}

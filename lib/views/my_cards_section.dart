import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/dot_indicator.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 420,
          child: Text(
            "My Cards",
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const MyCardsPageView(),
        const SizedBox(
          height: 24,
        ),
        const DotsIndicator(),
      ],
    );
  }
}

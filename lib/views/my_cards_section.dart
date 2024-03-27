import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/dot_indicator.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController _pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      currentPageIndex=_pageController.page!.round();
      setState(() {

      });
    });
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
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
         MyCardsPageView(
          pageController: _pageController,
        ),
        const SizedBox(
          height: 12,
        ),
         DotsIndicator(
          currentPageIndex: currentPageIndex ,
        ),
      ],
    );
  }
}

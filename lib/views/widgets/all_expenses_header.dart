import 'package:flutter/material.dart';

import '../../utlis/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context)
              .copyWith(fontWeight: FontWeight.w900),
        ),
        Text(
          "View all",
          style: AppStyles.styleRegular16(context),
        ),
      ],
    );
  }
}

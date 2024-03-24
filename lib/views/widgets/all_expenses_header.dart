import 'package:flutter/material.dart';

import '../../utlis/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "All Expenses",
            style: AppStyles.styleSemiBold20(context)
                .copyWith(fontWeight: FontWeight.w900),
          ),
          // does not matter to make clickable as it's check UI for now
          Text(
            "View all",
            style: AppStyles.styleRegular16(context).copyWith(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}

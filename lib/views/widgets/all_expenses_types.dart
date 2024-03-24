import 'package:flutter/material.dart';

import '../../models/all_expnses_item_model.dart';
import '../../utlis/app_images.dart';
import 'all_expnses_item.dart';

class AllExpensesTypes extends StatelessWidget {
  const AllExpensesTypes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AllExpensesItem(
            allExpensesItemModel: AllExpensesItemModel(
              label: 'Balance',
              arrowIconColor: Colors.white70,
              cardColor: Colors.blue,
              imagePath: Assets.imagesBalance,
              iconBackgroundColor: Colors.grey.shade300,
              moneyColor: Colors.white,
              labelColor: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: AllExpensesItem(
            allExpensesItemModel: AllExpensesItemModel(
              label: 'Income',
              arrowIconColor: Colors.grey,
              cardColor: Colors.white,
              imagePath: Assets.imagesIncome,
              iconBackgroundColor:Colors.grey.shade200,
              moneyColor: Colors.blue,
              labelColor: Colors.blue,
            ),
          ),
        ),
        Expanded(
          child: AllExpensesItem(
            allExpensesItemModel: AllExpensesItemModel(
              label: 'Expenses',
              arrowIconColor: Colors.grey,
              cardColor: Colors.white,
              imagePath: Assets.imagesExpenses,
              iconBackgroundColor: Colors.grey.shade200,
              moneyColor: Colors.blue,
              labelColor: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

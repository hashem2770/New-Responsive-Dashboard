import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expnses_item_model.dart';
import '../../utlis/app_images.dart';
import 'all_expenses_header.dart';
import 'all_expnses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 28),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 18),
          AllExpensesTypes(),
        ],
      ),
    );
  }
}

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

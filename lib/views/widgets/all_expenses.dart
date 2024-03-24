import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expnses_item_model.dart';
import '../../utlis/app_images.dart';
import 'all_expenses_header.dart';
import 'all_expenses_types.dart';
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

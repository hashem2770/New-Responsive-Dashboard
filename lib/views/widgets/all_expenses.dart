import 'package:flutter/material.dart';
import '../../helper/methods/container_decoration.dart';
import 'all_expenses_header.dart';
import 'all_expenses_types.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      margin: const EdgeInsets.only(top: 18),
      decoration: buildShapeDecoration(),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 12),
          AllExpensesTypes(),
          SizedBox(height: 8,),
        ],
      ),
    );
  }
}

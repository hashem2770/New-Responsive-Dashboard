import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';


class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 11,
          child: AllExpenses(),
        ),
        SizedBox(height: 18),
        Expanded(
          flex: 15,
          child: QuickInvoice(),
        )
      ],
    );
  }
}

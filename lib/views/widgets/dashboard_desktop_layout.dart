import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Income_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import '../all_expenses_and_quick_invoice_section.dart';
import '../my_cards_and_transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 4,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(width: 18),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(flex: 2,child: MyCardsAndTransactionHistory()),
              SizedBox(height: 12),
              Expanded(child: IncomeSection())
            ],
          ),
        ),
      ],
    );
  }
}

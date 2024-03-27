import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import '../all_expenses_and_quick_invoice_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        const SizedBox(width: 24),
        const Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        const SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.greenAccent,
          ),
        ),
      ],
    );
  }
}

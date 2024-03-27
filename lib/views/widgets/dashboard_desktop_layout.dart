import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_page_view.dart';
import '../all_expenses_and_quick_invoice_section.dart';
import 'custom_dot.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              MyCardsPageView(),
              SizedBox(height: 24),
              CustomDotIndicator(isActive: true),
            ],
          )
        ),
      ],
    );
  }
}

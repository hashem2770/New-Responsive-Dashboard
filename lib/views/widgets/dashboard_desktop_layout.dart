import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        const SizedBox(width: 24),
        const Expanded(
          flex: 3,
          child: Column(
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
          ),
        ),
        const SizedBox(width: 24),
        Expanded(flex: 2,child: Container(color: Colors.greenAccent,))
      ],
    );
  }
}

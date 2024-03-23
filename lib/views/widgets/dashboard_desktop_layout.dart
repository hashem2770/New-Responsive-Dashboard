import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

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
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(
                child: AllExpenses(),
              )
            ],
          ),
        ),
      ],
    );
  }
}

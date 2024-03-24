import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

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
        const SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              const Expanded(
                flex: 8,
                child: AllExpenses(),
              ),
              const SizedBox(height: 18),
              Expanded(
                flex: 10,
                child: Container(color: Colors.amberAccent,),
              )
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => const Text('Mobile'),
        tabletLayout: (context) => const Text('tablet'),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}

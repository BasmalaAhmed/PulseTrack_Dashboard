import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/adaptive_layout.dart';
import 'package:pulse_track_dashboard/widgets/desktop_dashboard_layout.dart';
import 'package:pulse_track_dashboard/widgets/tablet_dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const TabletDashboardLayout(),
        desktopLayout: (context) =>const DesktopDashboardLayout(),
      ),
    );
  }
}
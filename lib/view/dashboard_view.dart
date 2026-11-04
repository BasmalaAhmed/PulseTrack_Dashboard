import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/adaptive_layout.dart';
import 'package:pulse_track_dashboard/widgets/desktop_dashboard_layout.dart';
import 'package:pulse_track_dashboard/widgets/mobile_dashboard_layout.dart';
import 'package:pulse_track_dashboard/widgets/tablet_dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key, required this.onThemeToggle});

  final VoidCallback onThemeToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileDashboardLayout(onThemeToggle: onThemeToggle,),
        tabletLayout: (context) => TabletDashboardLayout(onThemeToggle: onThemeToggle,),
        desktopLayout: (context) =>
            DesktopDashboardLayout(onThemeToggle: onThemeToggle),
      ),
    );
  }
}

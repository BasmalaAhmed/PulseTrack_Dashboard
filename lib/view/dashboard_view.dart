import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/adaptive_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => SizedBox(),
      ),
    );
  }
}
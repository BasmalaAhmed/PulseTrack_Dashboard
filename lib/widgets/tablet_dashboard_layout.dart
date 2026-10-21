import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/dashboard_content.dart';
import 'package:pulse_track_dashboard/widgets/drawer_rail.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DrawerRail(),
        Expanded(flex: 5, child: DashboardContent()),
      ],
    );
  }
}

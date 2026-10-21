import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/custom_drawer.dart';
import 'package:pulse_track_dashboard/widgets/dashboard_content.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final drawerWidth = (constraints.maxWidth * 0.18).clamp(210.0, 280.0);

        return Row(
          children: [
            SizedBox(width: drawerWidth, child: const CustomDrawer()),
            Expanded(
              flex: 5,
              child: DashboardContent()
            ),
          ],
        );
      },
    );
  }
}

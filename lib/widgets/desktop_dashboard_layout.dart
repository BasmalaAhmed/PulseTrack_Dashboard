import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/custom_drawer.dart';
import 'package:pulse_track_dashboard/widgets/custom_header.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer()),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              CustomHeader(),
            ],
          ))
      ],
    );
  }
}
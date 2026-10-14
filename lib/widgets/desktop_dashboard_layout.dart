import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/cards_list.dart';
import 'package:pulse_track_dashboard/widgets/custom_drawer.dart';
import 'package:pulse_track_dashboard/widgets/custom_header.dart';
import 'package:pulse_track_dashboard/widgets/priority_tasks_and_recent_activity_section.dart';
import 'package:pulse_track_dashboard/widgets/weekly_productivity_and_project_health_section.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomHeader(),
                SizedBox(height: 24),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      CardsList(),
                      SizedBox(height: 24),
                      WeeklyProductivityAndProjectHealthSection(),
                      SizedBox(height: 24),
                      PriorityTasksAndRecentActivitySection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

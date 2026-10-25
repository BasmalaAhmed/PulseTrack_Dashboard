import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/cards_list.dart';
import 'package:pulse_track_dashboard/widgets/mobile_header.dart';
import 'package:pulse_track_dashboard/widgets/priority_tasks_and_recent_activity_section.dart';
import 'package:pulse_track_dashboard/widgets/weekly_productivity_and_project_health_section.dart';

class MobileDashboardLayout extends StatelessWidget {
  const MobileDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MobileHeader(),
          Padding(
            padding: const EdgeInsets.all(16),
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
    );
  }
}

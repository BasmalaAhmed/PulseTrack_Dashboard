import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/priority_tasks_section.dart';
import 'package:pulse_track_dashboard/widgets/recent_activity_section.dart';

class PriorityTasksAndRecentActivitySection extends StatelessWidget {
  const PriorityTasksAndRecentActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth >= 800;
        if (isWide) {
          return IntrinsicHeight(
            child: Row(
              children: [
                Expanded(child: PriorityTasksSection()),
                SizedBox(width: 24,),
                Expanded(child: RecentActivitySection()),
              ],
            ),
          );
        }
        return Column(
          children: [
            PriorityTasksSection(),
            SizedBox(height: 24,),
            RecentActivitySection(),
          ],
        );
      }
    );
  }
}
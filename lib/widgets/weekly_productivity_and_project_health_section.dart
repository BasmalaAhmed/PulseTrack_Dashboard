import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/project_health_section.dart';
import 'package:pulse_track_dashboard/widgets/weekly_productivity_section.dart';

class WeeklyProductivityAndProjectHealthSection extends StatelessWidget {
  const WeeklyProductivityAndProjectHealthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
                      children: [
                        Expanded(flex: 2,child: WeeklyProductivitySection()),
                        SizedBox(width: 24,),
                        Expanded(child: ProjectHealthSection()),
                      ],
                    ),
    );
  }
}
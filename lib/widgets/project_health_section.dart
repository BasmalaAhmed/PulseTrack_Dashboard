import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/pie_chart_indicator_item.dart';
import 'package:pulse_track_dashboard/widgets/project_health_chart.dart';
import 'package:pulse_track_dashboard/widgets/project_health_header.dart';

class ProjectHealthSection extends StatelessWidget {
  const ProjectHealthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF161C26),
        border: Border.all(color: Color(0XFF232B3B)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            ProjectHealthHeader(),
            SizedBox(height: 36),
            ProjectHealthChart(),
            SizedBox(height: 25),
            PieChartIndicatorItem(
              title: 'On Track',
              dotColor: Color(0XFF10B981),
              projectsNum: 9,
              percent: 65,
            ),
            SizedBox(height: 10),
            PieChartIndicatorItem(
              title: 'At Risk',
              dotColor: Color(0XFFFBBF24),
              projectsNum: 3,
              percent: 22,
            ),
            SizedBox(height: 10),
            PieChartIndicatorItem(
              title: 'Delayed',
              dotColor: Color(0XFFEF4444),
              projectsNum: 2,
              percent: 13,
            ),
            SizedBox(height: 12),
            Divider(color: Color(0XFF232B3B)),
            SizedBox(height: 22),
            Text(
              'View Portfolio Health Matrix >',
              style: AppStyles.semibold12Style.copyWith(
                color: Color(0XFFFBBF24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

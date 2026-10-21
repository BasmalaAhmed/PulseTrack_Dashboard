import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/pie_chart_indicator_item.dart';

class ProjectHealthLegend extends StatelessWidget {
  const ProjectHealthLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PieChartIndicatorItem(
          title: 'On Track',
          dotColor: Color(0XFF10B981),
          projectsNum: 9,
          percent: 65,
        ),
        const SizedBox(height: 10),
        const PieChartIndicatorItem(
          title: 'At Risk',
          dotColor: Color(0XFFFBBF24),
          projectsNum: 3,
          percent: 22,
        ),
        const SizedBox(height: 10),
        const PieChartIndicatorItem(
          title: 'Delayed',
          dotColor: Color(0XFFEF4444),
          projectsNum: 2,
          percent: 13,
        ),
      ],
    );
  }
}

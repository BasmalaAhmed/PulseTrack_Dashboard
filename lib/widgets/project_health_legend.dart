import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/widgets/pie_chart_indicator_item.dart';

class ProjectHealthLegend extends StatelessWidget {
  const ProjectHealthLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PieChartIndicatorItem(
          title: 'On Track',
          dotColor: AppColors.kGreenColor,
          projectsNum: 9,
          percent: 65,
        ),
        const SizedBox(height: 10),
        const PieChartIndicatorItem(
          title: 'At Risk',
          dotColor: AppColors.kAccentLightColor,
          projectsNum: 3,
          percent: 22,
        ),
        const SizedBox(height: 10),
        const PieChartIndicatorItem(
          title: 'Delayed',
          dotColor: AppColors.kDangerColor,
          projectsNum: 2,
          percent: 13,
        ),
      ],
    );
  }
}

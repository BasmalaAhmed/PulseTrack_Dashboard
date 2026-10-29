import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class ProjectHealthChart extends StatefulWidget {
  const ProjectHealthChart({super.key});

  @override
  State<ProjectHealthChart> createState() => _ProjectHealthChartState();
}

class _ProjectHealthChartState extends State<ProjectHealthChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 190,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(getChartData()),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '14',
                style: AppStyles.bold24Style.copyWith(color: AppColors.kNeutralColor),
              ),
              Text(
                'INITIATIVES',
                style: AppStyles.semibold10Style.copyWith(
                  color: AppColors.kGrey94Color,
                  fontFamily: 'JetBrains_Mono',
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      startDegreeOffset: -75,
      sectionsSpace: 0,
      centerSpaceRadius: 60,
      borderData: FlBorderData(show: false),
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (event, response) {
          setState(() {
            activeIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sections: [
        PieChartSectionData(
          value: 9,
          color: AppColors.kGreenDarkColor,
          radius: activeIndex == 0 ? 28 : 20,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 3,
          color: AppColors.kAccentColor,
          radius: activeIndex == 1 ? 28 : 20,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 2,
          color: AppColors.kDangerColor,
          radius: activeIndex == 2 ? 28 : 20,
          showTitle: false,
        ),
      ],
    );
  }
}

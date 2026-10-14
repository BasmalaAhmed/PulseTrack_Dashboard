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
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 190, maxWidth: 190),
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          alignment: Alignment.center,
          children: [
            PieChart(getChartData()),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '14',
                  style: AppStyles.bold24Style.copyWith(color: Color(0XFFF8FAFC)),
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
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          value: 9,
          color: Color(0XFF059669),
          radius: activeIndex == 0 ? 28 : 20,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 3,
          color: Color(0XFFF59E0B),
          radius: activeIndex == 1 ? 28 : 20,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 2,
          color: Color(0XFFEF4444),
          radius: activeIndex == 2 ? 28 : 20,
          showTitle: false,
        ),
      ],
    );
  }
}

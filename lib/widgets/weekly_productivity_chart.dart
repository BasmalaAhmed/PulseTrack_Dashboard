import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class WeeklyProductivityChart extends StatelessWidget {
  const WeeklyProductivityChart({super.key});

  static const Color plannedColor = Color(0xFF263249);
  static const Color completedColor = Color(0xFFCBD5E1);
  static const Color highlightColor = Color(0xFFFFAA00);
  static const Color labelColor = Color(0xFF718096);
  static const Color gridColor = Color(0xFF202938);

  final List<double> planned = const [36, 44, 42, 39, 46, 22, 14];

  final List<double> completed = const [31, 40, 52, 38, 44, 19, 12];

  final List<String> days = const [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 60,
        minY: 0,
        alignment: BarChartAlignment.spaceAround,
        groupsSpace: 18,
        barGroups: List.generate(7, (index) {
          final isWednesday = index == 2;

          return BarChartGroupData(
            x: index,
            barsSpace: 8,
            barRods: [
              BarChartRodData(
                toY: planned[index],
                width: 20,
                color: plannedColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
              ),
              BarChartRodData(
                toY: completed[index],
                width: 20,
                color: isWednesday ? highlightColor : completedColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
              ),
            ],
          );
        }),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: 15,
          getDrawingHorizontalLine: (value) {
            return FlLine(color: gridColor, strokeWidth: 1);
          },
        ),
        titlesData: FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 48,
              interval: 15,
              getTitlesWidget: (value, meta) {
                return Text(
                  '${value.toInt()} SP',
                  style: AppStyles.regular12Style.copyWith(color: labelColor),
                );
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 32,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();

                if (index < 0 || index >= days.length) {
                  return const SizedBox.shrink();
                }
                final isWednesday = index == 2;

                return Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    days[index],
                    style: AppStyles.regular12Style.copyWith(
                      fontSize: 13,
                      color: isWednesday ? highlightColor : labelColor,
                      fontWeight: isWednesday
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border(
            bottom: BorderSide(color: gridColor),
          ),
        ),
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              return BarTooltipItem('${rod.toY.toInt()} SP', AppStyles.bold12Style.copyWith(color: AppColors.kNeutralColor, ));
            },
          )
        )
      ),
    );
  }
}

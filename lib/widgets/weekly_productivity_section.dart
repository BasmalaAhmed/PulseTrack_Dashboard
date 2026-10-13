import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/bar_chart_indicator_item.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';
import 'package:pulse_track_dashboard/widgets/custom_switch_tabs.dart';
import 'package:pulse_track_dashboard/widgets/weekly_productivity_chart.dart';

class WeeklyProductivitySection extends StatelessWidget {
  const WeeklyProductivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF161C26),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0XFF232B3B)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Weekly Productivity & Sprint Velocity',
              style: AppStyles.bold14Style.copyWith(color: Color(0XFFF8FAFC)),
            ),
            Text(
              'Comparison between planned commitments and completed outputs',
              style: AppStyles.regular12Style.copyWith(
                color: AppColors.kGrey94Color,
              ),
            ),
            SizedBox(height: 12),
            FittedBox(child: CustomSwitchTabs()),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 116),
              child: FittedBox(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF0A0E16),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Color(0XFFF59E0B).withValues(alpha: 0.4),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    child: Row(
                      children: [
                        CustomDot(height: 8, width: 8),
                        SizedBox(width: 5),
                        Text(
                          '52 SP Completed (+12% peak)',
                          style: AppStyles.medium11Style.copyWith(
                            color: Color(0XFFFCD34D),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 320, child: WeeklyProductivityChart()),
            SizedBox(height: 16,),

            Row(
              children: [
                BarChartIndicatorItem(
                  title: 'Delivered Story Points',
                  color: Color(0xFFCBD5E1),
                ),
                SizedBox(width: 24),
                BarChartIndicatorItem(
                  title: 'Peak Sprint Velocity',
                  color: Color(0XFFFBBF24),
                ),
                SizedBox(width: 24),
                BarChartIndicatorItem(
                  title: 'Committed Target',
                  titleColor: Color(0XFF94A3B8),
                  color: Color(0XFF253046),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Text('Sprint #48 ends in 4 days', style: AppStyles.regular11Style.copyWith(
              color: AppColors.kGrey64Color,
              fontFamily: 'JetBrains_Mono'
            ),),
          ],
        ),
      ),
    );
  }
}

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
        color: AppColors.kCardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.kBorderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Weekly Productivity & Sprint Velocity',
              style: AppStyles.bold14Style.copyWith(color: AppColors.kNeutralColor),
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
                    color: AppColors.kScaffoldColor,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: AppColors.kAccentColor.withValues(alpha: 0.4),
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
                            color: AppColors.kAccentLighterColor,
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
            Wrap(
              spacing: 24,
              runSpacing: 8,
              children: [
                BarChartIndicatorItem(
                  title: 'Delivered Story Points',
                  color: AppColors.kIconLightColor,
                ),
                BarChartIndicatorItem(
                  title: 'Peak Sprint Velocity',
                  color: AppColors.kAccentColor,
                ),
                BarChartIndicatorItem(
                  title: 'Committed Target',
                  titleColor: AppColors.kGrey94Color,
                  color: AppColors.kChartPlannedColor,
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

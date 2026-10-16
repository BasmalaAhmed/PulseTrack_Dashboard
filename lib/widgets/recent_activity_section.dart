import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';
import 'package:pulse_track_dashboard/widgets/recent_activity_footer.dart';
import 'package:pulse_track_dashboard/widgets/recent_activity_list.dart';

class RecentActivitySection extends StatelessWidget {
  const RecentActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF161C26),
        border: Border.all(color: Color(0XFF232B3B)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Activity & Audit Log',
                      style: AppStyles.bold14Style.copyWith(
                        color: Color(0XFFF8FAFC),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Real-time repository commits, pipeline runs, and review gates',
                      style: AppStyles.regular12Style.copyWith(
                        color: AppColors.kGrey94Color,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF10B981).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color(0XFF10B981).withValues(alpha: 0.2),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    child: Row(
                      children: [
                        CustomDot(
                          height: 8,
                          width: 8,
                          color: Color(0XFF34D399),
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Live Feed',
                          style: AppStyles.semibold11Style.copyWith(
                            color: Color(0XFF34D399),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Color(0XFF232B3B), height: 0),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: RecentActivityList(),
            ),
          ),
          RecentActivityFooter(),
        ],
      ),
    );
  }
}

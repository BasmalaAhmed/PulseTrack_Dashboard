import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_dotted_button.dart';
import 'package:pulse_track_dashboard/widgets/priority_tasks_list.dart';

class PriorityTasksSection extends StatelessWidget {
  const PriorityTasksSection({super.key, this.fillHeight = false});
  final bool fillHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kCardColor,
        border: Border.all(color: AppColors.kBorderColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priority Tasks & Milestones',
                        style: AppStyles.bold14Style.copyWith(
                          color: AppColors.kNeutralColor,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Immediate action items requiring lead sign-off',
                        style: AppStyles.regular12Style.copyWith(
                          color: AppColors.kGrey94Color,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'View All (38)',
                  style: AppStyles.semibold12Style.copyWith(
                    color: AppColors.kAccentLightColor,
                  ),
                ),
              ],
            ),
          ),
          Divider(color: AppColors.kBorderColor, height: 0),
          if (fillHeight)
            Expanded(
              child: Align(alignment: Alignment.topCenter, child: PriorityTasksList()),
            )
          else
            PriorityTasksList(),
          Container(
            decoration: BoxDecoration(
              color: AppColors.kSurfaceColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: CustomDottedButton(),
            ),
          ),
        ],
      ),
    );
  }
}

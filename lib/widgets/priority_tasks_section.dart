import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_dotted_button.dart';
import 'package:pulse_track_dashboard/widgets/priority_tasks_list_view.dart';

class PriorityTasksSection extends StatelessWidget {
  const PriorityTasksSection({super.key});

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
            child: Container(
              decoration: BoxDecoration(),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priority Tasks & Milestones',
                        style: AppStyles.bold14Style.copyWith(
                          color: Color(0XFFF8FAFC),
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
                  Spacer(),
                  Text(
                    'View All (38)',
                    style: AppStyles.semibold12Style.copyWith(
                      color: Color(0XFFFBBF24),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Color(0XFF232B3B),
          ),
          PriorityTasksListView(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: CustomDottedButton(),
          ),
        ],
      ),
    );
  }
}

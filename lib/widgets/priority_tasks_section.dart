import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_dotted_button.dart';
import 'package:pulse_track_dashboard/widgets/priority_tasks_list.dart';

class PriorityTasksSection extends StatelessWidget {
  const PriorityTasksSection({super.key, this.fillHeight = false});
  final bool fillHeight;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: colors.outline),
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
                          color: colors.onSurface,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Immediate action items requiring lead sign-off',
                        style: AppStyles.regular12Style.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'View All (38)',
                  style: AppStyles.semibold12Style.copyWith(
                    color: colors.secondary,
                  ),
                ),
              ],
            ),
          ),
          Divider(color: colors.outlineVariant, height: 0),
          if (fillHeight)
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: PriorityTasksList(),
              ),
            )
          else
            PriorityTasksList(),
          Container(
            decoration: BoxDecoration(
              color: colors.surface,
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

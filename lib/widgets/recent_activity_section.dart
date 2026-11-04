import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';
import 'package:pulse_track_dashboard/widgets/recent_activity_footer.dart';
import 'package:pulse_track_dashboard/widgets/recent_activity_list.dart';

class RecentActivitySection extends StatelessWidget {
  const RecentActivitySection({super.key, this.fillHeight = false});
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
                        'Recent Activity & Audit Log',
                        style: AppStyles.bold14Style.copyWith(
                          color: colors.onSurface,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Real-time repository commits, pipeline runs, and review gates',
                        style: AppStyles.regular12Style.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    decoration: BoxDecoration(
                      color: colors.onTertiaryContainer.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: colors.onTertiaryContainer.withValues(alpha: 0.2),
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
                            color: colors.onTertiaryContainer,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Live Feed',
                            style: AppStyles.semibold11Style.copyWith(
                              color: colors.onTertiaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                child: RecentActivityList(),
              ),
            )
          else
            RecentActivityList(),
          RecentActivityFooter(),
        ],
      ),
    );
  }
}

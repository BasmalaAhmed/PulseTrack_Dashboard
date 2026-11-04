import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';

class PieChartIndicatorItem extends StatelessWidget {
  const PieChartIndicatorItem({
    super.key,
    required this.title,
    required this.dotColor,
    required this.projectsNum,
    required this.percent,
  });
  final String title;
  final Color dotColor;
  final int projectsNum;
  final int percent;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        children: [
          CustomDot(height: 10, width: 10, color: dotColor),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: AppStyles.medium12Style.copyWith(
                color: colors.onSurfaceVariant,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          SizedBox(width: 8),
          Text(
            '$projectsNum projects',
            style: AppStyles.bold12Style.copyWith(
              color: colors.onSurfaceVariant,
            ),
          ),
          SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              color: colors.secondaryContainer,
              border: Border.all(color: colors.outline),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Text(
                '$percent%',
                style: AppStyles.regular11Style.copyWith(
                  color: colors.onSecondaryContainer,
                  fontFamily: 'JetBrains_Mono',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

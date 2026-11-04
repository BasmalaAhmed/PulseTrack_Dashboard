import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomPriority extends StatelessWidget {
  const CustomPriority({
    super.key,
    required this.priority,
  });

  final String priority;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final Color priorityColor;
    switch (priority) {
      case 'Urgent':
        priorityColor = colors.error;
      case 'High':
        priorityColor = colors.secondary;
      case 'Done':
        priorityColor = colors.onTertiaryContainer;
      default:
        priorityColor = colors.onSurfaceVariant;
    }
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
        color: priorityColor.withValues(alpha: isDark ? 0.15 : 0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: priorityColor.withValues(alpha: isDark ? 0.3 : 0.4)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Text(
          priority,
          style: AppStyles.semibold11Style.copyWith(color: priorityColor),
        ),
      ),
    );
  }
}

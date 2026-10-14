import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomPriority extends StatelessWidget {
  const CustomPriority({
    super.key,
    required this.color,
    required this.priority,
    required this.titleColor,
  });

  final Color color;
  final Color titleColor;
  final String priority;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Text(
          priority,
          style: AppStyles.semibold11Style.copyWith(color: titleColor),
        ),
      ),
    );
  }
}

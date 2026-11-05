import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class SwitchTabsItem extends StatelessWidget {
  const SwitchTabsItem({
    super.key,
    required this.isActive,
    required this.onTap,
    required this.title,
  });
  final bool isActive;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? colors.secondary.withValues(alpha: 0.12) : null,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Text(
            title,
            style: AppStyles.semibold12Style.copyWith(
              color: isActive ? colors.secondary : colors.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}

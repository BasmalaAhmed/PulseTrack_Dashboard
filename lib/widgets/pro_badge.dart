import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class ProBadge extends StatelessWidget {
  const ProBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: AppColors.kAccentColor.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: AppColors.kAccentColor.withValues(alpha: 0.3),
        ),
      ),
      child: Text(
        'PRO',
        style: AppStyles.semibold10Style.copyWith(
          color: AppColors.kAccentLightColor,
        ),
      ),
    );
  }
}

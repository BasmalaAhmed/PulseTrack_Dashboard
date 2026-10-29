import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomSwitchTabs extends StatelessWidget {
  const CustomSwitchTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kSurfaceColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.kBorderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.kHighlightSurfaceColor,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: AppColors.kButtonBorderColor
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Text('Story Points' , style: AppStyles.semibold12Style.copyWith(
                  color: AppColors.kAccentLightColor
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Text(
                'Hours',
                style: AppStyles.medium12Style.copyWith(
                  color: AppColors.kGrey94Color,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Text(
                'Commits',
                style: AppStyles.medium12Style.copyWith(
                  color: AppColors.kGrey94Color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

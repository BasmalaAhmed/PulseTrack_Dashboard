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
        color: Color(0XFF131924),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0XFF232B3B)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0XFF1E2638),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Color(0XFF2B364D)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Text('Story Points' , style: AppStyles.semibold12Style.copyWith(
                  color: Color(0XFFFBBF24)
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

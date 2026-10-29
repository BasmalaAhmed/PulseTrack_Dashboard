import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';

class CustomFoldTile extends StatelessWidget {
  const CustomFoldTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      horizontalTitleGap: 0,
      tileColor: AppColors.kRaisedSurfaceColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: AppColors.kBorderColor),
      ),
      leading: CustomDot(height: 8, width: 8),
      title: Text(
        'Acme Engineering',
        style: AppStyles.medium12Style.copyWith(
          fontFamily: 'JetBrains_Mono',
          color: AppColors.kTextSoftColor,
        ),
      ),
      trailing: const Icon(
        Icons.unfold_more_rounded,
        color: AppColors.kGrey94Color,
      ),
    );
  }
}

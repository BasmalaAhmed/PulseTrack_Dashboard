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
      tileColor: const Color(0XFF1A2232),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Color(0XFF232B3B)),
      ),
      leading: CustomDot(height: 8, width: 8),
      title: Text(
        'Acme Engineering',
        style: AppStyles.medium12Style.copyWith(
          fontFamily: 'JetBrains_Mono',
          color: const Color(0XFFE2E8F0),
        ),
      ),
      trailing: const Icon(
        Icons.unfold_more_rounded,
        color: AppColors.kGrey94Color,
      ),
    );
  }
}

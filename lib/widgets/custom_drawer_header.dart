import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(AppImages.icon),
      title: Row(
        children: [
          Text(
            'PulseTrack',
            style: AppStyles.bold16Style.copyWith(
              color: AppColors.kNeutralColor,
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0XFFF59E0B).withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Color(0XFFF59E0B).withValues(alpha: 0.3),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              child: Text(
                'PRO',
                style: AppStyles.semibold10Style.copyWith(
                  color: Color(0XFFFBBF24),
                ),
              ),
            ),
          ),
        ],
      ),
      subtitle: Text(
        'Enterprise Analytics',
        style: AppStyles.medium12Style.copyWith(color: AppColors.kGrey94Color),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: SvgPicture.asset(AppImages.icon, width: 40, height: 40),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'PulseTrack',
                    maxLines: 1,
                    softWrap: false,
                    style: AppStyles.bold16Style.copyWith(
                      color: AppColors.kNeutralColor,
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0XFFF59E0B).withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Color(0XFFF59E0B).withValues(alpha: 0.3),
                      ),
                    ),
                    child: Text(
                      'PRO',
                      style: AppStyles.semibold10Style.copyWith(
                        color: Color(0XFFFBBF24),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Enterprise Analytics',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.medium12Style.copyWith(
                  color: AppColors.kGrey94Color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

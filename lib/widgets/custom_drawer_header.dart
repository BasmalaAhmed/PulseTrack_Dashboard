import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/pro_badge.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key, required this.widget});
  final Widget widget;

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
                  ProBadge(),
                ],
              ),
              widget
            ],
          ),
        ],
      ),
    );
  }
}


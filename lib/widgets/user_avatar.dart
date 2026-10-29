import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          child: Container(
            decoration: ShapeDecoration(
              shape: OvalBorder(side: BorderSide(color: AppColors.kBorderLightColor)),
            ),
            child: Image.asset(AppImages.admin, width: 36, height: 36),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CustomDot(
            height: 12,
            width: 12,
            color: AppColors.kGreenColor,
            isBorder: true,
          ),
        ),
      ],
    );
  }
}
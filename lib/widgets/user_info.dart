import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Stack(
        children: [
          ClipOval(
            child: Container(
              decoration: const ShapeDecoration(
                shape: OvalBorder(side: BorderSide(color: Color(0XFF2A3448))),
              ),
              child: Image.asset(AppImages.admin, width: 36, height: 36),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CustomDot(height: 12, width: 12, color: Color(0XFF10B981),)
          ),
        ],
      ),
      title: Text(
        'Alex Chen',
        style: AppStyles.semibold12Style.copyWith(
          color: const Color(0XFFF8FAFC),
        ),
      ),
      subtitle: Text('Senior Tech', style: AppStyles.regular11Style),
      trailing: const Icon(
        Icons.keyboard_double_arrow_left_rounded,
        color: AppColors.kGrey94Color,
      ),
    );
  }
}

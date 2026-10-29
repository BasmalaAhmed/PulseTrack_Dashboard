import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/user_avatar.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const UserAvatar(),
      title: Text(
        'Alex Chen',
        style: AppStyles.semibold12Style.copyWith(
          color: AppColors.kNeutralColor,
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



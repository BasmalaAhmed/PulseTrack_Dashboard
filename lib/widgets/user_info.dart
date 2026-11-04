import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/user_avatar.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const UserAvatar(),
      title: Text(
        'Alex Chen',
        style: AppStyles.semibold12Style.copyWith(
          color: colors.onSurface,
        ),
      ),
      subtitle: Text('Senior Tech', style: AppStyles.regular11Style),
      trailing: Icon(
        Icons.keyboard_double_arrow_left_rounded,
        color: colors.onSurfaceVariant,
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_track_dashboard/models/drawer_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
    required this.onTap,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      tileColor: isActive
          ? AppColors.kAccentColor.withValues(alpha: 0.15)
          : null,
      shape: isActive
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: AppColors.kAccentColor.withValues(alpha: 0.3),
              ),
            )
          : null,
      leading: SvgPicture.asset(
        drawerItemModel.icon,
        colorFilter: ColorFilter.mode(
          isActive ? AppColors.kAccentLightColor : AppColors.kGrey94Color,
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.regular14Style.copyWith(
          fontWeight: FontWeight.w600,
          color: isActive ? AppColors.kAccentLightColor : AppColors.kIconLightColor,
        ),
      ),
      trailing: isActive
          ? CustomDot(height: 6, width: 6)
          : drawerItemModel.badgeCount != null
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
              decoration: BoxDecoration(
                color: AppColors.kAccentColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '${drawerItemModel.badgeCount}',
                style: AppStyles.semibold10Style.copyWith(
                  color: AppColors.kOnAccentColor,
                  fontSize: 9,
                ),
              ),
            )
          : null,
    );
  }
}

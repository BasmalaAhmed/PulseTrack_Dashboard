import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_track_dashboard/models/drawer_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel, required this.isActive, required this.onTap});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      tileColor: isActive
          ? const Color(0XFFF59E0B).withValues(alpha: 0.15)
          : null,
      shape: isActive
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: const Color(0XFFF59E0B).withValues(alpha: 0.3),
              ),
            )
          : null,
      leading: SvgPicture.asset(
        drawerItemModel.icon,
        colorFilter: ColorFilter.mode(
          isActive
              ? const Color(0XFFFBBF24)
              : AppColors.kGrey94Color,
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.regular14Style.copyWith(
          fontWeight: FontWeight.w600,
          color: isActive
              ? const Color(0XFFFBBF24)
              : const Color(0XFFCBD5E1),
        ),
      ),
      trailing: isActive
          ? Container(
              height: 6,
              width: 6,
              decoration: const ShapeDecoration(
                shape: OvalBorder(),
                color: Color(0XFFFBBF24),
              ),
            )
          : null,
    );
  }
}

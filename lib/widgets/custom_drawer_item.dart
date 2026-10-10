import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_track_dashboard/models/drawer_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      tileColor: drawerItemModel.isActive
          ? const Color(0XFFF59E0B).withValues(alpha: 0.15)
          : null,
      shape: drawerItemModel.isActive
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
          drawerItemModel.isActive
              ? const Color(0XFFFBBF24)
              : AppColors.kGrey94Color,
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.regular14Style.copyWith(
          fontWeight: FontWeight.w600,
          color: drawerItemModel.isActive
              ? const Color(0XFFFBBF24)
              : const Color(0XFFCBD5E1),
        ),
      ),
      trailing: drawerItemModel.isActive
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

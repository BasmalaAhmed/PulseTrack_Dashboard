import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_track_dashboard/models/drawer_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';

class DrawerRailItem extends StatelessWidget {
  const DrawerRailItem({
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
    return Tooltip(
      message: drawerItemModel.title,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: isActive
                  ? Color(0XFFF59E0B).withValues(alpha: 0.15)
                  : null,
              borderRadius: BorderRadius.circular(8),
              border: isActive
                  ? Border.all(color: Color(0XFFF59E0B).withValues(alpha: 0.3))
                  : null,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  drawerItemModel.icon,
                  colorFilter: ColorFilter.mode(
                    isActive ? Color(0XFFFBBF24) : AppColors.kGrey94Color,
                    BlendMode.srcIn,
                  ),
                ),
                if (isActive || drawerItemModel.hasBadge)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CustomDot(
                      height: 6,
                      width: 6,
                      color: isActive
                          ? Color(0XFFFBBF24)
                          : Color(0XFFF59E0B).withValues(alpha: 0.4),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

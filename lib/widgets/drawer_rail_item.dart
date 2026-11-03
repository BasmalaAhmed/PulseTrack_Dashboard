import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_track_dashboard/models/drawer_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
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
    final colors = Theme.of(context).colorScheme;
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
                  ? colors.secondary.withValues(alpha: 0.15)
                  : null,
              borderRadius: BorderRadius.circular(8),
              border: isActive
                  ? Border.all(color: colors.secondary.withValues(alpha: 0.3))
                  : null,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  drawerItemModel.icon,
                  colorFilter: ColorFilter.mode(
                    isActive ? colors.secondary : colors.onSurfaceVariant,
                    BlendMode.srcIn,
                  ),
                ),
                if (isActive)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CustomDot(
                      height: 6,
                      width: 6,
                    ),
                  )
                else if (drawerItemModel.badgeCount != null)
                  Positioned(
                    top: 6,
                    right: 6,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 1,
                      ),
                      decoration: BoxDecoration(
                        color: colors.secondary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '${drawerItemModel.badgeCount}',
                        style: AppStyles.semibold10Style.copyWith(
                          color: colors.onSecondary,
                          fontSize: 9,
                        ),
                      ),
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

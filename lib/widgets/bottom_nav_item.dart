import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_track_dashboard/models/drawer_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.model,
    required this.isActive,
    required this.onTap,
  });
  final DrawerItemModel model;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    const amber = Color(0XFFF59E0B);
    final color = isActive ? const Color(0XFFFBBF24) : AppColors.kGrey94Color;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
        decoration: BoxDecoration(
          color: isActive ? amber.withValues(alpha: 0.15) : null,
          borderRadius: BorderRadius.circular(8),
          border: isActive
              ? Border.all(color: amber.withValues(alpha: 0.3))
              : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(
                  model.icon,
                  width: 20,
                  height: 20,
                  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                ),
                if (model.badgeCount != null)
                  Positioned(
                    top: -6,
                    right: -12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 1,
                      ),
                      decoration: BoxDecoration(
                        color: amber,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '${model.badgeCount}',
                        style: AppStyles.semibold10Style.copyWith(
                          color: const Color(0XFF020617),
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 4),

            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                model.title,
                maxLines: 1,
                style: AppStyles.semibold10Style.copyWith(color: color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

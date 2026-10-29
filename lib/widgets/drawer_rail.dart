import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_track_dashboard/models/drawer_items.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/widgets/drawer_rail_item.dart';
import 'package:pulse_track_dashboard/widgets/user_avatar.dart';

class DrawerRail extends StatelessWidget {
  const DrawerRail({super.key});

  @override
  Widget build(BuildContext context) {
    final left = MediaQuery.viewPaddingOf(context).left;
    return Container(
      width: 72 + left,
      decoration: const BoxDecoration(
        color: AppColors.kSurfaceColor,
        border: Border(right: BorderSide(color: AppColors.kBorderColor)),
      ),
      child: SafeArea(
        right: false,
        minimum: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            SvgPicture.asset(AppImages.icon, width: 40, height: 40),
            const SizedBox(height: 16),
            Tooltip(
              message: 'Acme Engineering',
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: AppColors.kRaisedSurfaceColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.kBorderColor),
                ),
                child: Center(
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.kAccentColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ValueListenableBuilder<int>(
                valueListenable: selectedDrawerIndex,
                builder: (context, selected, _) {
                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8),
                    itemCount: drawerItems.length,
                    itemBuilder: (context, index) => Center(
                      child: DrawerRailItem(
                        drawerItemModel: drawerItems[index],
                        isActive: selected == index,
                        onTap: () => selectedDrawerIndex.value = index,
                      ),
                    ),
                  );
                },
              ),
            ),
            const UserAvatar(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_track_dashboard/models/drawer_items.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/widgets/drawer_rail_item.dart';
import 'package:pulse_track_dashboard/widgets/user_avatar.dart';

class DrawerRail extends StatelessWidget {
  const DrawerRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: Color(0XFF131924),
        border: Border(right: BorderSide(color: Color(0XFF232B3B))),
      ),
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
                color: Color(0XFF1A2232),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0XFF232B3B)),
              ),
              child: Center(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFF59E0B),
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
    );
  }
}

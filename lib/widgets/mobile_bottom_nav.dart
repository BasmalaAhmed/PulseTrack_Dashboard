import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/drawer_items.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/widgets/bottom_nav_item.dart';

class MobileBottomNav extends StatelessWidget {
  const MobileBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final items = drawerItems.take(5).toList();
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kSurfaceColor,
        border: Border(top: BorderSide(color: AppColors.kBorderColor)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: ValueListenableBuilder<int>(
            valueListenable: selectedDrawerIndex,
            builder: (context, selected, _) {
              return Row(
                children: [
                  for (var i = 0; i < items.length; i++)
                    Expanded(
                      child: BottomNavItem(
                        model: items[i],
                        isActive: selected == i,
                        onTap: () => selectedDrawerIndex.value = i,
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/drawer_items.dart';
import 'package:pulse_track_dashboard/widgets/bottom_nav_item.dart';

class MobileBottomNav extends StatelessWidget {
  const MobileBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final items = drawerItems.take(5).toList();
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFF131924),
        border: Border(top: BorderSide(color: Color(0XFF1F2937))),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
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
    );
  }
}

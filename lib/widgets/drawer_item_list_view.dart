import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/drawer_items.dart';
import 'package:pulse_track_dashboard/widgets/custom_drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedDrawerIndex,
      builder: (context, selected, _) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: drawerItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: CustomDrawerItem(
                drawerItemModel: drawerItems[index],
                isActive: selected == index,
                onTap: () => selectedDrawerIndex.value = index,
              ),
            );
          },
        );
      },
    );
  }
}

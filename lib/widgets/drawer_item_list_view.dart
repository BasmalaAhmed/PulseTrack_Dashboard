import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/drawer_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/widgets/custom_drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({super.key});

  final List<DrawerItemModel> items = const [
    DrawerItemModel(
      icon: AppImages.dashboard,
      title: 'Dashboard',
      isActive: true,
    ),
    DrawerItemModel(icon: AppImages.projects, title: 'Projects'),
    DrawerItemModel(icon: AppImages.tasks, title: 'Tasks'),
    DrawerItemModel(icon: AppImages.analytics, title: 'Analytics'),
    DrawerItemModel(icon: AppImages.activity, title: 'Activity'),
    DrawerItemModel(icon: AppImages.settings, title: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: CustomDrawerItem(drawerItemModel: items[index]),
        );
      },
    );
  }
}

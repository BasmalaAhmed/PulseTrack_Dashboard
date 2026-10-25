import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/drawer_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';

const List<DrawerItemModel> drawerItems = [
  DrawerItemModel(icon: AppImages.dashboard, title: 'Dashboard'),
  DrawerItemModel(icon: AppImages.projects, title: 'Projects', badgeCount: 12),
  DrawerItemModel(icon: AppImages.tasks, title: 'Tasks', badgeCount: 24),
  DrawerItemModel(icon: AppImages.analytics, title: 'Analytics'),
  DrawerItemModel(icon: AppImages.activity, title: 'Activity'),
  DrawerItemModel(icon: AppImages.settings, title: 'Settings'),
];
final ValueNotifier<int> selectedDrawerIndex = ValueNotifier<int>(0);

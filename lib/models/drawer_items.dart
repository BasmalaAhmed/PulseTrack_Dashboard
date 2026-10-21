import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/drawer_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';

const List<DrawerItemModel> drawerItems = [
  DrawerItemModel(icon: AppImages.dashboard, title: 'Dashboard'),
  DrawerItemModel(icon: AppImages.projects, title: 'Projects', hasBadge: true),
  DrawerItemModel(icon: AppImages.tasks, title: 'Tasks', hasBadge: true),
  DrawerItemModel(icon: AppImages.analytics, title: 'Analytics'),
  DrawerItemModel(icon: AppImages.activity, title: 'Activity'),
  DrawerItemModel(icon: AppImages.settings, title: 'Settings'),
];
final ValueNotifier<int> selectedDrawerIndex = ValueNotifier<int>(0);

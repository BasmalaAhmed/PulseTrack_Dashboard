import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/priority_tasks_list_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/widgets/priority_tasks_list_item.dart';

class PriorityTasksList extends StatelessWidget {
  const PriorityTasksList({super.key});

  static List<PriorityTasksListItemModel> tasks = [
    PriorityTasksListItemModel(
      title: 'Finalize JWT Refresh Token Architecture',
      subject: 'GraphQL Migration',
      date: 'Today',
      color: AppColors.kDangerColor,
      titleColor: AppColors.kDangerLightColor,
      priority: 'Urgent',
    ),
    PriorityTasksListItemModel(
      title: 'App Store Review Guideline 4.8 Compliance',
      subject: 'iOS App v2.4',
      date: 'Tomorrow',
      color: AppColors.kAccentColor,
      titleColor: AppColors.kAccentLighterColor,
      priority: 'High',
    ),
    PriorityTasksListItemModel(
      title: 'Export Tokens to Style Dictionary Format',
      subject: 'Design System v1.2',
      date: 'Oct 24',
      color: AppColors.kIconLightColor,
      titleColor: AppColors.kNeutralColor,
      priority: 'Medium',
    ),
    PriorityTasksListItemModel(
      title: 'Setup Kafka Cluster Benchmark in Staging',
      subject: 'Data Pipeline',
      date: 'Today',
      color: AppColors.kAccentColor,
      titleColor: AppColors.kAccentLighterColor,
      priority: 'High',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final task in tasks)
          PriorityTasksListItem(priorityTasksListItemModel: task),
      ],
    );
  }
}

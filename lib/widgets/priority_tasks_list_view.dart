import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/priority_tasks_list_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/widgets/priority_tasks_list_item.dart';

class PriorityTasksListView extends StatelessWidget {
  const PriorityTasksListView({super.key});

  static List<PriorityTasksListItemModel> tasks = [
    PriorityTasksListItemModel(
      title: 'Finalize JWT Refresh Token Architecture',
      subject: 'GraphQL Migration',
      date: 'Today',
      color: Color(0XFFEF4444),
      titleColor: Color(0XFFF87171),
      priority: 'Urgent',
    ),
    PriorityTasksListItemModel(
      title: 'App Store Review Guideline 4.8 Compliance',
      subject: 'iOS App v2.4',
      date: 'Tomorrow',
      color: Color(0XFFF59E0B),
      titleColor: Color(0XFFFCD34D),
      priority: 'High',
    ),
    PriorityTasksListItemModel(
      title: 'Export Tokens to Style Dictionary Format',
      subject: 'Design System v1.2',
      date: 'Oct 24',
      color: Color(0XFFCBD5E1),
      titleColor: AppColors.kNeutralColor,
      priority: 'Medium',
    ),
    PriorityTasksListItemModel(
      title: 'Setup Kafka Cluster Benchmark in Staging',
      subject: 'Data Pipeline',
      date: 'Today',
      color: Color(0XFFF59E0B),
      titleColor: Color(0XFFFCD34D),
      priority: 'High',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return PriorityTasksListItem(priorityTasksListItemModel: tasks[index]);
      },
    );
  }
}

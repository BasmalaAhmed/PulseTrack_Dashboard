import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/priority_tasks_list_item_model.dart';
import 'package:pulse_track_dashboard/widgets/priority_tasks_list_item.dart';

class PriorityTasksList extends StatelessWidget {
  const PriorityTasksList({super.key});

  static List<PriorityTasksListItemModel> tasks = [
    PriorityTasksListItemModel(
      title: 'Finalize JWT Refresh Token Architecture',
      subject: 'GraphQL Migration',
      date: 'Today',
      priority: 'Urgent',
    ),
    PriorityTasksListItemModel(
      title: 'App Store Review Guideline 4.8 Compliance',
      subject: 'iOS App v2.4',
      date: 'Tomorrow',
      priority: 'High',
    ),
    PriorityTasksListItemModel(
      title: 'Export Tokens to Style Dictionary Format',
      subject: 'Design System v1.2',
      date: 'Oct 24',
      priority: 'Medium',
    ),
    PriorityTasksListItemModel(
      title: 'Setup Kafka Cluster Benchmark in Staging',
      subject: 'Data Pipeline',
      date: 'Today',
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

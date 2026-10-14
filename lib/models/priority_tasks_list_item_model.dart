import 'dart:ui';

class PriorityTasksListItemModel {
  final String title;
  final String subject;
  final String date;
  final Color color;
  final Color titleColor;
  final String priority;

  const PriorityTasksListItemModel({required this.title, required this.subject, required this.date, required this.color, required this.titleColor, required this.priority});
}
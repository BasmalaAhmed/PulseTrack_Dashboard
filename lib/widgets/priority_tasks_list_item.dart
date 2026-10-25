import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse_track_dashboard/models/priority_tasks_list_item_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_priority.dart';

class PriorityTasksListItem extends StatefulWidget {
  const PriorityTasksListItem({
    super.key,
    required this.priorityTasksListItemModel,
  });
  final PriorityTasksListItemModel priorityTasksListItemModel;

  @override
  State<PriorityTasksListItem> createState() => _PriorityTasksListItemState();
}

class _PriorityTasksListItemState extends State<PriorityTasksListItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0XFF232B3B))),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Checkbox.adaptive(
              value: isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked = newValue ?? false;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: BorderSide(color: Color(0XFF374151)),
              activeColor: Color(0XFFF59E0B),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.priorityTasksListItemModel.title,
                    style: AppStyles.semibold12Style.copyWith(
                      color: isChecked
                          ? AppColors.kGrey64Color
                          : Color(0XFFE2E8F0),
                      decoration: isChecked ? TextDecoration.lineThrough : null,
                      decorationColor: AppColors.kGrey64Color,
                    ),
                  ),
                  SizedBox(height: 4),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0XFF1E2638),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Color(0XFF283347)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            child: Text(
                              widget.priorityTasksListItemModel.subject,
                              style: AppStyles.medium11Style.copyWith(
                                color: isChecked
                                    ? AppColors.kGrey94Color
                                    : Color(0XFFCBD5E1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        isChecked
                            ? FaIcon(
                                FontAwesomeIcons.check,
                                color: Color(0XFF34D399),
                                size: 12,
                              )
                            : FaIcon(
                                FontAwesomeIcons.calendar,
                                color: AppColors.kGrey94Color,
                                size: 12,
                              ),
                        SizedBox(width: 4),
                        Text(
                          isChecked
                              ? 'Resolved'
                              : widget.priorityTasksListItemModel.date,
                          style: AppStyles.regular11Style.copyWith(
                            color: isChecked
                                ? Color(0XFF34D399)
                                : AppColors.kGrey94Color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomPriority(
              color: isChecked
                  ? Color(0XFF10B981)
                  : widget.priorityTasksListItemModel.color,
              priority: isChecked
                  ? 'Done'
                  : widget.priorityTasksListItemModel.priority,
              titleColor: isChecked
                  ? Color(0XFF34D399)
                  : widget.priorityTasksListItemModel.titleColor,
            ),
          ],
        ),
      ),
    );
  }
}

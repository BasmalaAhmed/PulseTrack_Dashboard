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
        border: Border(bottom: BorderSide(color: AppColors.kBorderColor)),
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
              side: BorderSide(color: AppColors.kGrey33Color),
              activeColor: AppColors.kAccentColor,
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
                          : AppColors.kTextSoftColor,
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
                            color: AppColors.kHighlightSurfaceColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: AppColors.kBorderLightColor),
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
                                    : AppColors.kIconLightColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        isChecked
                            ? FaIcon(
                                FontAwesomeIcons.check,
                                color: AppColors.kGreenLightColor,
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
                                ? AppColors.kGreenLightColor
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
                  ? AppColors.kGreenColor
                  : widget.priorityTasksListItemModel.color,
              priority: isChecked
                  ? 'Done'
                  : widget.priorityTasksListItemModel.priority,
              titleColor: isChecked
                  ? AppColors.kGreenLightColor
                  : widget.priorityTasksListItemModel.titleColor,
            ),
          ],
        ),
      ),
    );
  }
}

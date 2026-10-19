import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_button.dart';
import 'package:pulse_track_dashboard/widgets/custom_notification_button.dart';
import 'package:pulse_track_dashboard/widgets/custom_drop_down_menu.dart';
import 'package:pulse_track_dashboard/widgets/custom_text_field.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  static const double _searchMax = 240, _searchMin = 120;
  static const double _dropMax = 175, _dropMin = 160;
  static const double _taskMax = 90, _taskMin = 70;
  static const double _newMax = 130, _newMin = 100;
  static const double _titleMin = 180;
  static const double _fixed = 107;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF131924),
        border: Border(bottom: BorderSide(color: Color(0XFF232B3B))),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
        child: LayoutBuilder(
          builder: (context , constraints) {
            const actionsMax = _searchMax + _dropMax + _taskMax + _newMax;
            const actionsMin = _searchMin + _dropMin + _taskMin + _newMin;
            final budget = constraints.maxWidth - _titleMin - _fixed;
             final t = ((budget - actionsMin) / (actionsMax - actionsMin))
                .clamp(0.0, 1.0);
            double size(double min, double max) => min + (max - min) * t;
            final shrunk = t < 1;
            return Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back, Alex',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.bold16Style.copyWith(
                          color: AppColors.kNeutralColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Here is your team's project velocity & delivery overview",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.regular12Style.copyWith(
                          color: AppColors.kGrey94Color,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Row(
                  children: [
                    SizedBox(
                       width: size(_searchMin, _searchMax),
                      height: 36,
                      child: CustomTextField(),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(width: size(_dropMin, _dropMax), height: 36, child: CustomDropDownMenu()),
                    const SizedBox(width: 10),
                    CustomNotificationButton(),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 20,
                      width: 5,
                      child: VerticalDivider(color: Color(0XFF232B3B)),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 36,
                      child: CustomButton(
                        title: 'Task',
                        width: shrunk ? size(_taskMin, _taskMax) : null,
                        buttonColor: Color(0XFF1E2638),
                        style: AppStyles.semibold12Style.copyWith(
                          color: Color(0XFFF1F5F9),
                        ),
                        iconColor: Color(0XFFCBD5E1),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 36,
                      child: CustomButton(
                        title: 'New Project',
                        width: shrunk ? size(_newMin, _newMax) : null,
                        buttonColor: Color(0XFFF59E0B),
                        style: AppStyles.bold12Style.copyWith(
                          color: Color(0XFF020617),
                        ),
                        iconColor: Color(0XFF020617),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}

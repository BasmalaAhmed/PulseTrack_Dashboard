import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_button.dart';
import 'package:pulse_track_dashboard/widgets/custom_notification_button.dart';
import 'package:pulse_track_dashboard/widgets/custom_drop_down_menu.dart';
import 'package:pulse_track_dashboard/widgets/custom_text_field.dart';
import 'package:pulse_track_dashboard/widgets/search_icon_button.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

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
          builder: (context, constraints) {
            final w = constraints.maxWidth;
            final searchAsIcon = w < 780;
            final searchWidth = w >= 900 ? 240.0 : 150.0;
            final dropWidth = w >= 900 ? 170.0 : 150.0;
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
                if (searchAsIcon)
                  const SearchIconButton()
                else
                  SizedBox(
                    width: searchWidth,
                    height: 36,
                    child: CustomTextField(),
                  ),
                const SizedBox(width: 10),
                SizedBox(
                  width: dropWidth,
                  height: 36,
                  child: CustomDropDownMenu(),
                ),
                const SizedBox(width: 10),
                const CustomNotificationButton(),
                const SizedBox(width: 10),
                SizedBox(
                  height: 20,
                  width: 5,
                  child: VerticalDivider(color: Color(0XFF232B3B)),
                ),
                const SizedBox(width: 10),
                CustomButton(
                  title: 'New Task',
                  buttonColor: Color(0XFF1E2638),
                  style: AppStyles.semibold12Style.copyWith(
                    color: Color(0XFFF1F5F9),
                  ),
                  iconColor: Color(0XFFCBD5E1),
                ),
                const SizedBox(width: 10),
                CustomButton(
                  title: 'New Project',
                  buttonColor: Color(0XFFF59E0B),
                  style: AppStyles.bold12Style.copyWith(
                    color: Color(0XFF020617),
                  ),
                  iconColor: Color(0XFF020617),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

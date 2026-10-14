import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class RecentActivityItem extends StatelessWidget {
  const RecentActivityItem({
    super.key,
    required this.user,
    required this.operation,
    required this.details,
    this.msgColor,
    required this.msg,
    required this.time,
    this.fontFamily,
    required this.icon,
    this.iconColor,
    this.iconBorder,
  });
  final String user, operation, msg, details, time, icon;
  final Color? msgColor, iconColor, iconBorder;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: ShapeDecoration(
            color: iconColor ?? Color(0XFF1E2638),
            shape: OvalBorder(
              side: BorderSide(color: iconBorder ?? Color(0XFF283347)),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(icon),
          ),
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  user,
                  style: AppStyles.semibold12Style.copyWith(
                    color: Color(0XFFE2E8F0),
                  ),
                ),
                Text(
                  operation,
                  style: AppStyles.semibold12Style.copyWith(
                    color: AppColors.kGrey94Color,
                  ),
                ),
                Text(
                  msg,
                  style: AppStyles.medium11Style.copyWith(
                    color: msgColor ?? Color(0XFFFBBF24),
                    fontFamily: fontFamily,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Text(
              details,
              style: AppStyles.regular12Style.copyWith(
                color: AppColors.kGrey94Color,
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          time,
          style: AppStyles.regular11Style.copyWith(
            color: AppColors.kGrey64Color,
          ),
        ),
      ],
    );
  }
}

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: ShapeDecoration(
            color: iconColor ?? AppColors.kHighlightSurfaceColor,
            shape: OvalBorder(
              side: BorderSide(color: iconBorder ?? AppColors.kBorderLightColor),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(icon),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: user,
                      style: AppStyles.semibold12Style.copyWith(
                        color: AppColors.kTextSoftColor,
                      ),
                    ),
                    TextSpan(
                      text: operation,
                      style: AppStyles.semibold12Style.copyWith(
                        color: AppColors.kGrey94Color,
                      ),
                    ),
                    TextSpan(
                      text: msg,
                      style: AppStyles.medium11Style.copyWith(
                        color: msgColor ?? AppColors.kAccentLightColor,
                        fontFamily: fontFamily,
                      ),
                    ),
                  ],
                ),
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
        ),
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

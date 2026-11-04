import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final colors = Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: ShapeDecoration(
            color: iconColor ?? colors.surfaceContainerHighest,
            shape: OvalBorder(
              side: BorderSide(color: iconBorder ?? colors.outlineVariant),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(
                colors.onSurfaceVariant,
                BlendMode.srcIn,
              ),
            ),
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
                        color: colors.onSurface,
                      ),
                    ),
                    TextSpan(
                      text: operation,
                      style: AppStyles.semibold12Style.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    TextSpan(
                      text: msg,
                      style: AppStyles.medium11Style.copyWith(
                        color: msgColor ?? colors.secondary,
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
                  color: colors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        Text(
          time,
          style: AppStyles.regular11Style.copyWith(color: colors.onSurfaceVariant),
        ),
      ],
    );
  }
}

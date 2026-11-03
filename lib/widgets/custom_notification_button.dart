import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';

class CustomNotificationButton extends StatelessWidget {
  const CustomNotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            color: colors.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: colors.outline),
          ),
        ),

        SvgPicture.asset(AppImages.notification, colorFilter: ColorFilter.mode(colors.onSurface, BlendMode.srcIn),),
        Positioned(
          top: 6,
          right: 8,
          child: CustomDot(height: 12, width: 12, isBorder: true),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({super.key, required this.icon, this.color, this.borderColor, this.iconColor});
  final FaIconData icon;
  final Color? color;
  final Color? borderColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: color ?? AppColors.kRaisedSurfaceColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor ?? AppColors.kBorderColor),
      ),
      child: Center(child: FaIcon(icon, color: iconColor ?? AppColors.kIconLightColor, size: 16,)),
    );
  }
}
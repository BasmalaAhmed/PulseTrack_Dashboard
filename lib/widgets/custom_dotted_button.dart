import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class CustomDottedButton extends StatelessWidget {
  const CustomDottedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        color: AppColors.kButtonBorderColor,
        strokeWidth: 1.5,
        dashPattern: [3, 3],
        radius: const Radius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.plus, color: AppColors.kIconLightColor, size: 16),
              SizedBox(width: 6),
              Text(
                'Create New Task',
                style: AppStyles.semibold12Style.copyWith(
                  color: AppColors.kIconLightColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class ProjectHealthHeader extends StatelessWidget {
  const ProjectHealthHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Project Health',
                style: AppStyles.bold14Style.copyWith(
                  color: const Color(0XFFF8FAFC),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                'Active portfolio status split',
                style: AppStyles.regular12Style.copyWith(
                  color: AppColors.kGrey94Color,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12,),
        FaIcon(
        FontAwesomeIcons.ellipsisVertical,
        color: AppColors.kGrey94Color,
        size: 16,
      ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class ProjectHealthHeader extends StatelessWidget {
  const ProjectHealthHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Project Health',
                style: AppStyles.bold14Style.copyWith(
                  color: colors.onSurface,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                'Active portfolio status split',
                style: AppStyles.regular12Style.copyWith(
                  color: colors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12,),
        FaIcon(
        FontAwesomeIcons.ellipsisVertical,
        color: colors.onSurfaceVariant,
        size: 16,
      ),
      ],
    );
  }
}
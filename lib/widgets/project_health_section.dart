import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/project_health_chart.dart';
import 'package:pulse_track_dashboard/widgets/project_health_header.dart';
import 'package:pulse_track_dashboard/widgets/project_health_legend.dart';

class ProjectHealthSection extends StatelessWidget {
  const ProjectHealthSection({super.key, this.horizontal = false});
  final bool horizontal;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: colors.outline),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ProjectHealthHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: horizontal
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ProjectHealthChart(),
                        const SizedBox(width: 40),
                        Flexible(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 340),
                            child: const ProjectHealthLegend(),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: ProjectHealthChart(),
                        ),
                        SizedBox(height: 24),
                        ProjectHealthLegend(),
                      ],
                    ),
            ),
            Column(
              children: [
                Divider(color: colors.outline),
                const SizedBox(height: 22),
                Text(
                  'View Portfolio Health Matrix >',
                  style: AppStyles.semibold12Style.copyWith(
                    color: colors.secondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

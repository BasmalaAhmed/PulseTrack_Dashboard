import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/progress_bar.dart';

class CustomQuota extends StatelessWidget {
  const CustomQuota({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.outline),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Compute Quota',
                  style: AppStyles.semibold12Style.copyWith(
                    color: colors.onSurface,
                  ),
                ),
                const Spacer(),
                Text(
                  '82%',
                  style: AppStyles.semibold12Style.copyWith(
                    color: colors.secondary,
                    fontFamily: 'JetBrains Mono',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ProgressBar(),
            const SizedBox(height: 8),
            Row(
              children: [
                Text('Tier: Enterprise', style: AppStyles.regular11Style),
                const Spacer(),
                Text(
                  'Upgrade',
                  style: AppStyles.semibold11Style.copyWith(
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

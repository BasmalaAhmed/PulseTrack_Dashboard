import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class RecentActivityFooter extends StatelessWidget {
  const RecentActivityFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
        border: Border(top: BorderSide(color: colors.outlineVariant)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Audited by PulseTrack Governance Engine',
                style: AppStyles.regular11Style.copyWith(color: colors.onSurfaceVariant),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              'View Audit Logs',
              style: AppStyles.semibold12Style.copyWith(
                color: colors.onSurface,
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_forward_rounded,
              color: colors.onSurface,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}

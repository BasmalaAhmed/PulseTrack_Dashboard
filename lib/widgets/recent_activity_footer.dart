import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class RecentActivityFooter extends StatelessWidget {
  const RecentActivityFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF131924),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
        border: Border(top: BorderSide(color: Color(0XFF232B3B))),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Audited by PulseTrack Governance Engine',
                style: AppStyles.regular11Style.copyWith(
                  color: AppColors.kGrey94Color,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              'View Audit Logs',
              style: AppStyles.semibold12Style.copyWith(color: Color(0XFFE2E8F0)),
            ),
            SizedBox(width: 4),
            Icon(Icons.arrow_forward_rounded, color: Color(0XFFE2E8F0), size: 14,),
          ],
        ),
      ),
    );
  }
}

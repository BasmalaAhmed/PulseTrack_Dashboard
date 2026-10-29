import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/widgets/recent_activity_item.dart';

class RecentActivityList extends StatelessWidget {
  const RecentActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          RecentActivityItem(
            user: 'Sarah Jenkins ',
            operation: 'merged PR #342 ',
            details:
                'Automated CI/CD suite passed with 99.4% branch test coverage.',
            msg: 'feat/auth-zero-trust',
            time: '12m ago',
            fontFamily: 'JetBrains_Mono',
            icon: AppImages.merge,
          ),
          SizedBox(height: 18),
          RecentActivityItem(
            user: 'Milestone Achieved: ',
            operation: '',
            details:
                'All 18 blocker criteria met for early enterprise customer cohort release.',
            msg: 'API v2 Gateway Beta',
            msgColor: AppColors.kGreenLightColor,
            time: '45m ago',
            icon: AppImages.milestone,
            iconColor: AppColors.kGreenColor.withValues(alpha: 0.15),
            iconBorder: AppColors.kGreenColor.withValues(alpha: 0.3),
          ),
          SizedBox(height: 18),
          RecentActivityItem(
            user: 'Marcus Bell ',
            operation: 'approved specs for ',
            details: 'Handoff bundle ready for frontend implementation sprint.',
            msg: 'Analytics Dashboard Refres',
            msgColor: AppColors.kTextSoftColor,
            time: '2h ago',
            icon: AppImages.approve,
          ),
          SizedBox(height: 16),
          RecentActivityItem(
            user: 'Alex Chen ',
            operation: 'pushed 4 commits to ',
            details:
                'perf(engine): optimize telemetry batch ingestion stream to 4ms.',
            msg: 'main',
            time: '4h ago',
            fontFamily: 'JetBrains_Mono',
            icon: AppImages.commit,
          ),
        ],
      ),
    );
  }
}

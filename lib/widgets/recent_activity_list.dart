import 'package:flutter/material.dart';
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
                'All 18 blocker criteria met for early enterprise customer cohort \nrelease.',
            msg: 'API v2 Gateway Beta',
            msgColor: Color(0XFF34D399),
            time: '45m ago',
            icon: AppImages.milestone,
            iconColor: Color(0XFF10B981).withValues(alpha: 0.15),
            iconBorder: Color(0XFF10B981).withValues(alpha: 0.3),
          ),
          SizedBox(height: 18),
          RecentActivityItem(
            user: 'Marcus Bell ',
            operation: 'approved specs for ',
            details: 'Handoff bundle ready for frontend implementation sprint.',
            msg: 'Analytics Dashboard Refres',
            msgColor: Color(0XFFE2E8F0),
            time: '2h ago',
            icon: AppImages.approve,
          ),
          SizedBox(height: 16),
          RecentActivityItem(
            user: 'Alex Chen ',
            operation: 'pushed 4 commits to ',
            details:
                'perf(engine): optimize telemetry batch ingestion \nstream to 4ms.',
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

import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/loading_bar.dart';

class CustomQuota extends StatelessWidget {
  const CustomQuota({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0XFF161C26),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0XFF232B3B)),
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
                    color: Color(0XFFCBD5E1),
                  ),
                ),
                const Spacer(),
                Text(
                  '82%',
                  style: AppStyles.semibold12Style.copyWith(
                    color: Color(0XFFFBBF24),
                    fontFamily: 'JetBrains Mono',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LoadingBar(),
            const SizedBox(height: 8),
            Row(
              children: [
                Text('Tier: Enterprise', style: AppStyles.regular11Style),
                const Spacer(),
                Text(
                  'Upgrade',
                  style: AppStyles.semibold11Style.copyWith(
                    color: const Color(0XFFFBBF24),
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

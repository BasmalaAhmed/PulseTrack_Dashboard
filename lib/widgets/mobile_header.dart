import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_button.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';
import 'package:pulse_track_dashboard/widgets/custom_notification_button.dart';
import 'package:pulse_track_dashboard/widgets/pro_badge.dart';
import 'package:pulse_track_dashboard/widgets/user_avatar.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0XFF131924),
        border: Border(bottom: BorderSide(color: Color(0XFF2B3547))),
      ),
      child: SafeArea(
        bottom: false,
        left: false,
        right: false,
        minimum: const EdgeInsets.only(top: 16),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Color(0XFF2B3547))),
                ),
                child: Row(
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SvgPicture.asset(
                        AppImages.icon,
                        width: 36,
                        height: 36,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'PulseTrack',
                                  maxLines: 1,
                                  softWrap: false,
                                  style: AppStyles.bold16Style.copyWith(
                                    color: AppColors.kNeutralColor,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                const ProBadge(),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomDot(height: 6, width: 6),
                                const SizedBox(width: 6),
                                Text(
                                  'Acme Engineering',
                                  style: AppStyles.medium12Style.copyWith(
                                    fontFamily: 'JetBrains_Mono',
                                    color: const Color(0XFFE2E8F0),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                const Icon(
                                  Icons.unfold_more_rounded,
                                  color: AppColors.kGrey94Color,
                                  size: 14,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const CustomNotificationButton(),
                    const SizedBox(width: 10),
                    const UserAvatar(),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Welcome back, Alex',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.bold16Style.copyWith(
                  color: AppColors.kNeutralColor,
                ),
              ),
              const SizedBox(height: 4),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Here is your team's project velocity & delivery overview",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.regular12Style.copyWith(
                    color: AppColors.kGrey94Color,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      title: 'New Task',
                      buttonColor: const Color(0XFF161C26),
                      style: AppStyles.semibold12Style.copyWith(
                        color: const Color(0XFFF1F5F9),
                      ),
                      iconColor: const Color(0XFFCBD5E1),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      title: 'New Project',
                      buttonColor: const Color(0XFFF59E0B),
                      style: AppStyles.semibold12Style.copyWith(
                        color: const Color(0XFF020617),
                      ),
                      iconColor: const Color(0XFF020617),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse_track_dashboard/models/card_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_sliver_grid.dart';
import 'package:pulse_track_dashboard/widgets/loading_bar.dart';

class CardsList extends StatelessWidget {
  const CardsList({super.key});

  static List<CardModel> items = [
    CardModel(
      title: 'ACTIVE PROJECTS',
      icon: FontAwesomeIcons.folder,
      number: '14',
      widget: SizedBox(
        width: double.infinity,
        child: Wrap(
          spacing: 12,
          runSpacing: 6,
          alignment: WrapAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.kGreenColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: AppColors.kGreenColor.withValues(alpha: 0.2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.arrow_upward_rounded,
                      color: AppColors.kGreenLightColor,
                      size: 12,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '+2 this mo',
                      style: AppStyles.semibold11Style.copyWith(
                        color: AppColors.kGreenLightColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 12),
            Text('4 near deadlines', style: AppStyles.regular11Style),
          ],
        ),
      ),
    ),
    CardModel(
      title: 'PENDING TASKS',
      icon: FontAwesomeIcons.clipboard,
      number: '38',
      widget: SizedBox(
        width: double.infinity,
        child: Wrap(
          spacing: 12,
          runSpacing: 6,
          alignment: WrapAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '12 completed today',
                      style: AppStyles.regular11Style,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '78%',
                  style: AppStyles.semibold11Style.copyWith(
                    fontFamily: 'JetBrains_Mono',
                    color: AppColors.kTextSoftColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            LoadingBar(loaded: 190, remaining: 55),
          ],
        ),
      ),
    ),
    CardModel(
      title: 'TEAM PRODUCTIVITY',
      icon: FontAwesomeIcons.arrowTrendUp,
      number: '94.2%',
      chart: true,
      color: AppColors.kAccentColor.withValues(alpha: 0.1),
      borderColor: AppColors.kAccentColor.withValues(alpha: 0.2),
      iconColor: AppColors.kAccentLightColor,
      widget: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AppImages.check),
            SizedBox(width: 4),
            Text(
              '+4.8% vs last cycle',
              style: AppStyles.semibold11Style.copyWith(
                color: AppColors.kGreenLightColor,
              ),
            ),
          ],
        ),
      ),
    ),
    CardModel(
      title: 'AVG CYCLE TIME',
      icon: FontAwesomeIcons.stopwatch,
      number: '3.2',
      widget: SizedBox(
        width: double.infinity,
        child: Wrap(
          spacing: 12,
          runSpacing: 6,
          alignment: WrapAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.kGreenColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: AppColors.kGreenColor.withValues(alpha: 0.2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Text(
                  '-0.6 days',
                  style: AppStyles.semibold11Style.copyWith(
                    color: AppColors.kGreenLightColor,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Text('velocity acceleration', style: AppStyles.regular11Style),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 872) {
          return CustomSliverGrid(items: items, crossAxisCount: 2);
        }
        return CustomSliverGrid(items: items, crossAxisCount: 4);
      },
    );
  }
}

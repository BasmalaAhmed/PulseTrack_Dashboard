import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/card_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_icon_container.dart';
import 'package:pulse_track_dashboard/widgets/team_productivity_chart.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.cardModel});
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: AppColors.kCardColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColors.kBorderColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      cardModel.title,
                      style: AppStyles.semibold12Style.copyWith(
                        color: AppColors.kGrey94Color,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CustomIconContainer(
                  icon: cardModel.icon,
                  color: cardModel.color,
                  borderColor: cardModel.borderColor,
                  iconColor: cardModel.iconColor,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      cardModel.number,
                      style: AppStyles.bold24Style.copyWith(
                        color: AppColors.kNeutralColor,
                        letterSpacing: -0.6,
                      ),
                    ),
                  ),
                ),
                if (cardModel.chart) ...[
                  const SizedBox(
                    width: 80,
                    height: 28,
                    child: TeamProductivityChart(),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 16),
            const Spacer(),
            cardModel.widget,
          ],
        ),
      ),
    );
  }
}

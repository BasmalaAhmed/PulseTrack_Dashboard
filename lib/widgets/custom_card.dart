import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/models/card_model.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_icon_container.dart';
import 'package:pulse_track_dashboard/widgets/team_productivity_chart.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key, required this.cardModel,
  });
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 170,
      ),
      child: Card(
        elevation: 0,
        color: Color(0XFF161C26),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0XFF232B3B)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    cardModel.title,
                    style: AppStyles.semibold12Style.copyWith(
                      color: AppColors.kGrey94Color,
                    ),
                  ),
                  Spacer(),
                  CustomIconContainer(icon: cardModel.icon, color: cardModel.color, borderColor: cardModel.borderColor,iconColor: cardModel.iconColor,),
                ],
              ),
              const SizedBox(height: 16,),
              Row(
                children: [
                  Text(
                    cardModel.number,
                    style: AppStyles.bold24Style.copyWith(
                      color: Color(0XFFF8FAFC),
                      letterSpacing: -0.6,
                    ),
                  ),
                  Spacer(),
                  cardModel.chart ? SizedBox(width: 80,height: 28,child: TeamProductivityChart()) : SizedBox(),
                ],
              ),
              const SizedBox(height: 16,),
              cardModel.widget,
            ],
          ),
        ),
      ),
    );
  }
}

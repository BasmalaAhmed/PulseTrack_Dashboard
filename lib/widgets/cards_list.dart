import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse_track_dashboard/models/card_model.dart';
import 'package:pulse_track_dashboard/utils/app_images.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_card.dart';
import 'package:pulse_track_dashboard/widgets/loading_bar.dart';

class CardsList extends StatelessWidget {
  const CardsList({super.key});

  static List<CardModel> items = [
    CardModel(
      title: 'ACTIVE PROJECTS',
      icon: FontAwesomeIcons.folder,
      number: '14',
      widget: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0XFF10B981).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Color(0XFF10B981).withValues(alpha: 0.2),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_upward_rounded,
                    color: Color(0XFF34D399),
                    size: 12,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '+2 this mo',
                    style: AppStyles.semibold11Style.copyWith(
                      color: Color(0XFF34D399),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 18),
          Text('4 near deadlines', style: AppStyles.regular11Style),
        ],
      ),
    ),
    CardModel(
      title: 'PENDING TASKS',
      icon: FontAwesomeIcons.clipboard,
      number: '38',
      widget: Column(
        children: [
          Row(
            children: [
              Text('12 completed today', style: AppStyles.regular11Style,),
              Spacer(),
              Text('78%' , style: AppStyles.semibold11Style.copyWith(
                fontFamily: 'JetBrains_Mono',
                color: Color(0XFFE2E8F0)
              ),)
            ],
          ),
          const SizedBox(height: 6,),
          LoadingBar(
            loaded: 190,
            remaining: 55,
          ),
        ],
      ),
    ),
    CardModel(
      title: 'TEAM PRODUCTIVITY',
      icon: FontAwesomeIcons.arrowTrendUp,
      number: '94.2%',
      chart: true,
      color: Color(0XFFF59E0B).withValues(alpha: 0.1),
      borderColor: Color(0XFFF59E0B).withValues(alpha: 0.2),
      iconColor: Color(0XFFFBBF24),
      widget: Row(
        children: [
          SvgPicture.asset(AppImages.check),
          SizedBox(width: 4,),
          Text('+4.8% vs last cycle', style: AppStyles.semibold11Style.copyWith(color: Color(0XFF34D399)),)
        ],
      ),
    ),
    CardModel(
      title: 'AVG CYCLE TIME',
      icon: FontAwesomeIcons.stopwatch,
      number: '3.2',
      widget: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0XFF10B981).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Color(0XFF10B981).withValues(alpha: 0.2),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Text(
                '-0.6 days',
                style: AppStyles.semibold11Style.copyWith(
                  color: Color(0XFF34D399),
                ),
              ),
            ),
          ),
          const SizedBox(width: 18),
          Text('velocity acceleration', style: AppStyles.regular11Style),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomCard(cardModel: items[0])),
        const SizedBox(width: 20),
        Expanded(child: CustomCard(cardModel: items[1])),
        const SizedBox(width: 20),
        Expanded(child: CustomCard(cardModel: items[2])),
        const SizedBox(width: 20),
        Expanded(child: CustomCard(cardModel: items[3])),
      ],
    );
  }
}

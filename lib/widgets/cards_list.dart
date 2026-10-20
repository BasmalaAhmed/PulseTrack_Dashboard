import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse_track_dashboard/models/card_model.dart';
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
                mainAxisSize: MainAxisSize.min,
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
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              '4 near deadlines',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.regular11Style,
            ),
          ),
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
              Expanded(
                child: Text(
                  '12 completed today',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.regular11Style,
                ),
              ),
              Text(
                '78%',
                style: AppStyles.semibold11Style.copyWith(
                  fontFamily: 'JetBrains_Mono',
                  color: Color(0XFFE2E8F0),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          LoadingBar(loaded: 190, remaining: 55),
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
          SizedBox(width: 4),
          Flexible(
            child: Text(
              '+4.8% vs last cycle',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.semibold11Style.copyWith(
                color: Color(0XFF34D399),
              ),
            ),
          ),
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
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              'velocity acceleration',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.regular11Style,
            ),
          ),
        ],
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

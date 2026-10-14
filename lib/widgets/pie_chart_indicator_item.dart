import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';

class PieChartIndicatorItem extends StatelessWidget {
  const PieChartIndicatorItem({super.key, required this.title, required this.dotColor, required this.projectsNum, required this.percent});
  final String title;
  final Color dotColor;
  final int projectsNum;
  final int percent; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        children: [
          CustomDot(height: 10, width: 10, color: dotColor,),
          SizedBox(width: 10,),
          Text(title, style: AppStyles.medium12Style.copyWith(color: Color(0XFFCBD5E1),),),
          Spacer(),
          Text('$projectsNum projects', style: AppStyles.bold12Style.copyWith(color: Color(0XFFF8FAFC),),),
          SizedBox(width: 8,),
          Container(
            decoration: BoxDecoration(
              color: Color(0XFF1E2638),
              border: Border.all(
                color: Color(0XFF283347),
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Text('$percent%', style: AppStyles.regular11Style.copyWith(
                color: AppColors.kGrey94Color,
                fontFamily: 'JetBrains_Mono'
              ),),
            ),
          )
        ],
      ),
    );
  }
}
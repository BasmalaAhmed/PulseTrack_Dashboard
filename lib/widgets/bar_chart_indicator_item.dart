import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_styles.dart';

class BarChartIndicatorItem extends StatelessWidget {
  const BarChartIndicatorItem({super.key, required this.title, required this.color, this.titleColor});
  final String title;
  final Color color;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      title,
                      style: AppStyles.medium12Style.copyWith(
                        color: titleColor ?? color,
                      ),
                    ),
                  ],
                );
  }
}
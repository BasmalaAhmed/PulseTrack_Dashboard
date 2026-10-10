import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/widgets/custom_dot.dart';

class CustomNotificationButton extends StatelessWidget {
  const CustomNotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF1A2232),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0XFF232B3B)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Icon(Icons.notifications_rounded, color: Color(0XFFCBD5E1)),
            Positioned(top: -1, right: 1, child: CustomDot(height: 12, width: 12)),
          ],
        ),
      ),
    );
  }
}

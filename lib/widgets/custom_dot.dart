import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.height, required this.width, this.color});
  final double height;
  final double width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
              height: height,
              width: height,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(color: Color(0XFF131924), width: 2),
                ),
                color: color ?? Color(0XFFF59E0B),
              ),
            );
  }
}
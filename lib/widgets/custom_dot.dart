import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.height, required this.width, this.color, this.isBorder = false});
  final double height;
  final double width;
  final Color? color;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
              height: height,
              width: height,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: isBorder ? BorderSide(color: colors.surface, width: 2) : BorderSide.none,
                ),
                color: color ?? colors.secondary,
              ),
            );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({super.key, required this.icon, this.color, this.borderColor, this.iconColor});
  final FaIconData icon;
  final Color? color;
  final Color? borderColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: color ?? Color(0XFF1A2232),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor ?? Color(0XFF232B3B)),
      ),
      child: Center(child: FaIcon(icon, color: iconColor ?? Color(0XFFCBD5E1), size: 16,)),
    );
  }
}
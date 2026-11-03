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
    final colors = Theme.of(context).colorScheme;
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: color ?? colors.secondaryContainer,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor ?? colors.outline),
      ),
      child: Center(child: FaIcon(icon, color: iconColor ?? colors.onSecondaryContainer, size: 16,)),
    );
  }
}
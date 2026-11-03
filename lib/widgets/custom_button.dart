import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.buttonColor,
    required this.style,
    required this.iconColor,
    this.width,
    this.borderColor,
  });
  final String title;
  final TextStyle style;
  final Color iconColor;
  final Color buttonColor;
  final double? width;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: width == null ? 12 : 8,
        vertical: 9,
      ),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: borderColor ?? Theme.of(context).colorScheme.outlineVariant,
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add_rounded, color: iconColor, size: 16),
            const SizedBox(width: 6),
            Text(title, style: style),
          ],
        ),
      ),
    );
  }
}

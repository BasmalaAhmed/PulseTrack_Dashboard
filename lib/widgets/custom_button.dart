import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.buttonColor, required this.style, required this.iconColor});
  final String title;
  final TextStyle style;
  final Color iconColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0XFF2E3A52)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
        child: Row(
          children: [
            Icon(Icons.add_rounded, color: iconColor, size: 20),
            const SizedBox(
              width: 6,
            ),
            Text(
              title,
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}

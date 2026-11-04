import 'package:flutter/material.dart';

class ThemeIcon extends StatelessWidget {
  const ThemeIcon({super.key, required this.onThemeToggle});

  final VoidCallback onThemeToggle;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Tooltip(
      padding: EdgeInsets.symmetric(horizontal: 4),
      message: isDark ? 'Switch to light mode' : 'Switch to dark mode',
      child: IconButton(
        onPressed: onThemeToggle,
        icon: Icon(
          isDark ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
          size: 20,
          color: isDark ? colors.secondary : colors.primary,
        ),
        style: IconButton.styleFrom(
          backgroundColor: colors.surfaceContainerHighest,
          foregroundColor: colors.onSurfaceVariant,
          side: BorderSide(color: colors.outline),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        constraints: const BoxConstraints.tightFor(width: 36, height: 36),
      ),
    );
  }
}

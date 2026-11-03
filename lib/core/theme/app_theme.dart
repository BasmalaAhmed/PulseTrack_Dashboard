import 'package:flutter/material.dart';

abstract class AppTheme {
  // =========================
  // Dark Theme Colors
  // =========================

  static const ColorScheme darkColorScheme = ColorScheme.dark(
    // Main accent color
    primary: Color(0xFF020617),
    primaryContainer: Color(0xFF25344D),
    // Secondary accent
    secondary: Color(0xFFF59E0B),
    onSecondary: Color(0XFF020617),
    secondaryContainer: Color(0xFF1A2232),
    onSecondaryContainer: Color(0xFFCBD5E1),
    tertiaryContainer: Color(0XFF10B981),
    onTertiaryContainer: Color(0XFF34D399),
    outline: Color(0xFF232B3B),
    outlineVariant: Color(0xFF1E293B),
    tertiary: Color(0xFFCBD5E1),
    // Surfaces
    surface: Color(0XFF131924),
    onSurface: Color(0xFFE2E8F0),
    onSurfaceVariant: Color(0xFF94A3B8),
    surfaceContainerHighest: Color(0XFF1A2232),
  );

  // =========================
  // Light Theme Colors
  // =========================

  static const ColorScheme lightColorScheme = ColorScheme.light(
    // Main accent color
    primary: Color(0xFF0F172A),
    onPrimary: Color(0XFFFFFFFF),
    primaryContainer: Color(0xFF263249),
    // Secondary accent
    secondary: Color(0xFFD97706),
    onSecondary: Color(0xFF020617),
    secondaryContainer: Color(0xFFF1F5F9),
    onSecondaryContainer: Color(0xFF334155),
    tertiaryContainer: Color(0XFFECFDF5),
    onTertiaryContainer: Color(0XFF047857),
    outline: Color(0xFFE2E8F0),
    outlineVariant: Color(0xFFCBD5E1),
    tertiary: Color(0xFFCBD5E1),
    // Surfaces
    surface: Colors.white,
    onSurface: Color(0xFF334155),
    onSurfaceVariant: Color(0XFF64748B),
    surfaceContainerHighest: Color(0XFFF8FAFC),
  );

  // =========================
  // ThemeData
  // =========================

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0XFF0B0F17),
    cardColor: const Color(0XFF161C26),
    colorScheme: darkColorScheme,

    iconTheme: IconThemeData(color: darkColorScheme.onSurface),
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    scaffoldBackgroundColor: const Color(0xFFF8FAFC),
    cardColor: Colors.white,
    colorScheme: lightColorScheme,

    iconTheme: IconThemeData(color: lightColorScheme.onSurface),
  );
}

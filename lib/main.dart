import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/core/theme/app_theme.dart';
import 'package:pulse_track_dashboard/view/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(enabled: false, builder: (context) => const PulseTrackApp()),
  );
}

class PulseTrackApp extends StatefulWidget {
  const PulseTrackApp({super.key});

  @override
  State<PulseTrackApp> createState() => _PulseTrackAppState();
}

class _PulseTrackAppState extends State<PulseTrackApp> {
  ThemeMode _themeMode = ThemeMode.light;
  
  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,
      home: DashboardView(onThemeToggle: _toggleTheme,),
    );
  }
}

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';
import 'package:pulse_track_dashboard/view/dashboard_view.dart';

void main() {
  runApp(DevicePreview(enabled: false, builder: (context) => const PulseTrackApp()));
}

class PulseTrackApp extends StatelessWidget {
  const PulseTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      builder: (context, child) {
        debugPrint('screen width = ${MediaQuery.sizeOf(context).width.round()}');
        return child!;
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.kScaffoldColor),
      home: DashboardView(),
    );
  }
}

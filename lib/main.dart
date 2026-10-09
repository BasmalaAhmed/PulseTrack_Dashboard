import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/view/dashboard_view.dart';

void main() {
  runApp(const PulseTrackApp());
}

class PulseTrackApp extends StatelessWidget {
  const PulseTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFF0B0F17),
      ),
      home: DashboardView(),
    );
  }
}
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pulse_track_dashboard/main.dart';
import 'package:pulse_track_dashboard/view/dashboard_view.dart';
import 'package:pulse_track_dashboard/widgets/theme_icon.dart';

void main() {
  testWidgets('theme button switches between light and dark', (tester) async {
    tester.view.physicalSize = const Size(1440, 1200);
    tester.view.devicePixelRatio = 1;

    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      DevicePreview(
        enabled: false,
        builder: (context) => const PulseTrackApp(),
      ),
    );
    await tester.pumpAndSettle();

    final dashboard = find.byType(DashboardView);
    final themeButton = find.byType(ThemeIcon);

    expect(
      Theme.of(tester.element(dashboard)).brightness,
      Brightness.light,
    );
    expect(
      find.descendant(
        of: themeButton,
        matching: find.byIcon(Icons.dark_mode_rounded),
      ),
      findsOneWidget,
    );

    await tester.tap(themeButton);
    await tester.pumpAndSettle();

    expect(
      Theme.of(tester.element(dashboard)).brightness,
      Brightness.dark,
    );
    expect(
      find.descendant(
        of: themeButton,
        matching: find.byIcon(Icons.light_mode_rounded),
      ),
      findsOneWidget,
    );
  });
}
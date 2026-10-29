import 'package:flutter/material.dart';
import 'package:pulse_track_dashboard/utils/app_colors.dart';

class TeamProductivityChart extends StatelessWidget {
  const TeamProductivityChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 100,
      child: CustomPaint(
        painter: ChartPainter(),
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final points = [
      Offset(size.width * 0.02, size.height * 0.80),
      Offset(size.width * 0.22, size.height * 0.58),
      Offset(size.width * 0.42, size.height * 0.73),
      Offset(size.width * 0.60, size.height * 0.20),
      Offset(size.width * 0.80, size.height * 0.36),
      Offset(size.width * 0.98, size.height * 0.02),
    ];

    final linePath = Path()
      ..moveTo(points.first.dx, points.first.dy);

    for (final point in points.skip(1)) {
      linePath.lineTo(point.dx, point.dy);
    }

    // Gradient area
    final areaPath = Path.from(linePath)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    final areaPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          AppColors.kMiniChartAreaStartColor,
          AppColors.kMiniChartAreaEndColor,
        ],
      ).createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      );

    canvas.drawPath(areaPath, areaPaint);

    // Chart line
    final linePaint = Paint()
      ..color = AppColors.kAccentColor
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke;

    canvas.drawPath(linePath, linePaint);
  }

  @override
  bool shouldRepaint(covariant ChartPainter oldDelegate) => false;
}
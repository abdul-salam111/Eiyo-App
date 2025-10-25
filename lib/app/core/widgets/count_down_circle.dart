import 'dart:math';
import 'package:flutter/material.dart';
import 'package:neutri_lens/app/core/theme/theme.dart';

class MultiColorCountdownCircle extends StatelessWidget {
  final double goodValue; // Good picks percentage
  final double mediumValue; // Medium picks percentage
  final double poorValue; // Poor picks percentage

  const MultiColorCountdownCircle({
    super.key,
    required this.goodValue,
    required this.mediumValue,
    required this.poorValue,
  });

  @override
  Widget build(BuildContext context) {
    // Calculate total and progress for each segment

    final double goodProgress = goodValue / 100;
    final double mediumProgress = mediumValue / 100;
    final double poorProgress = poorValue / 100;

    return Center(
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: 1.0),
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeOut,
        builder: (context, animationValue, child) {
          // Animate each segment
          final animatedGood = goodProgress * animationValue;
          final animatedMedium = mediumProgress * animationValue;
          final animatedPoor = poorProgress * animationValue;

          return CustomPaint(
            painter: _MultiArcPainter(
              goodProgress: animatedGood,
              mediumProgress: animatedMedium,
              poorProgress: animatedPoor,
            ),
            child: SizedBox(
              width: 140,
              height: 140,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${goodValue.toStringAsFixed(1)}%",
                      style: context.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _MultiArcPainter extends CustomPainter {
  final double goodProgress;
  final double mediumProgress;
  final double poorProgress;

  _MultiArcPainter({
    required this.goodProgress,
    required this.mediumProgress,
    required this.poorProgress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = 14.0;
    final center = size.center(Offset.zero);
    final radius = size.width / 2 - strokeWidth;

    final backgroundPaint = Paint()
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final goodPaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final mediumPaint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final poorPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    // Full circle background
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      2 * pi,
      false,
      backgroundPaint,
    );

    double startAngle = -pi / 2; // Start from top

    // Draw good picks (green)
    if (goodProgress > 0) {
      final goodSweepAngle = 2 * pi * goodProgress;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        goodSweepAngle,
        false,
        goodPaint,
      );
      startAngle += goodSweepAngle;
    }

    // Draw medium picks (orange)
    if (mediumProgress > 0) {
      final mediumSweepAngle = 2 * pi * mediumProgress;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        mediumSweepAngle,
        false,
        mediumPaint,
      );
      startAngle += mediumSweepAngle;
    }

    // Draw poor picks (red)
    if (poorProgress > 0) {
      final poorSweepAngle = 2 * pi * poorProgress;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        poorSweepAngle,
        false,
        poorPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _MultiArcPainter oldDelegate) {
    return oldDelegate.goodProgress != goodProgress ||
        oldDelegate.mediumProgress != mediumProgress ||
        oldDelegate.poorProgress != poorProgress;
  }
}

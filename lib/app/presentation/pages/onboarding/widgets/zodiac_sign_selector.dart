import 'dart:math';
import 'dart:ui' as ui;
import 'package:devstudios_test_task/app/domain/entity/onboarding_data/onboarding_data.entity.dart';
import 'package:devstudios_test_task/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ZodiacWheelPainter extends CustomPainter {
  final int selectedIndex;
  final double radius;

  ZodiacWheelPainter({
    required this.selectedIndex,
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final Paint backgroundPaint = Paint()
      ..color = Color(0xFF717784)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    final Paint selectedPaint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(center.dx + radius, center.dy),
        Offset(center.dx - radius, center.dy),
        [
          Color(0xFF717784).withAlpha(50),
          Color(0xFF717784).withAlpha(0),
        ],
      )
      ..style = PaintingStyle.fill;

    final double anglePerSection = 2 * pi / 12;

    for (int i = 0; i < 12; i++) {
      final startAngle = i * anglePerSection;
      final sweepAngle = anglePerSection;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        true,
        i == selectedIndex ? selectedPaint : backgroundPaint,
      );

      if (i == selectedIndex) {
        canvas.drawArc(
          Rect.fromCircle(center: center, radius: radius),
          startAngle,
          sweepAngle,
          true,
          backgroundPaint,
        );
      }

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius / 1.7),
        startAngle,
        sweepAngle,
        true,
        backgroundPaint,
      );

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius / 3),
        startAngle,
        sweepAngle,
        true,
        backgroundPaint,
      );
    }

    final Paint dialPaint = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = 1;

    final int totalMarks = 60;
    final double angleStep = 2 * pi / totalMarks;
    final double outerRadius = radius;
    final double innerRadiusLong = radius;
    final double innerRadiusShort = radius - 10;

    for (int i = 0; i < totalMarks; i++) {
      final double angle = i * angleStep - pi / 2;

      final double sinAngle = sin(angle);
      final double cosAngle = cos(angle);

      final Offset start = Offset(
        center.dx +
            (i % 5 == 0 ? innerRadiusLong : innerRadiusShort) * cosAngle,
        center.dy +
            (i % 5 == 0 ? innerRadiusLong : innerRadiusShort) * sinAngle,
      );

      final Offset end = Offset(
        center.dx + outerRadius * cosAngle,
        center.dy + outerRadius * sinAngle,
      );

      canvas.drawLine(start, end, dialPaint);
    }
  }

  @override
  bool shouldRepaint(ZodiacWheelPainter oldDelegate) {
    return oldDelegate.selectedIndex != selectedIndex;
  }
}

class ZodiacWheel extends StatefulWidget {

  final ZodiacSign value;

  const ZodiacWheel({super.key, required this.value});

  @override
  State<ZodiacWheel> createState() => _ZodiacWheelState();
}

class _ZodiacWheelState extends State<ZodiacWheel>
    with SingleTickerProviderStateMixin {
  static double radius = 156.r;

  @override
  Widget build(BuildContext context) {
    final size = Size(radius * 2 + 100, radius * 2 + 100);

    return Center(
      child: SizedBox(
        width: 2 * radius,
        height: 2 * radius,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: size,
              painter: ZodiacWheelPainter(
                selectedIndex: ZodiacSign.values.indexOf(widget.value) - 1,
                radius: radius,
              ),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFF75563D)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF75563D),
                        spreadRadius: 0,
                        blurRadius: 2,
                      )
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFC9A081),
                        Color(0xFF75563D),
                      ],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    widget.value.displayName,
                    style: TextStyle().interMedium16.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        height: 24.sp / 18.sp,
                        shadows: [
                          Shadow(
                              color: Color(0xFF604E38),
                              offset: Offset(-0.2, -1),
                              blurRadius: 1)
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            for (var i = 0; i < 12; i++) ...{
              Positioned(
                left: radius +
                    (radius - 30) * cos((2 * pi * i) / 12 - pi / 12) -
                    10,
                top: radius +
                    (radius - 30) * sin((2 * pi * i) / 12 - pi / 12) -
                    10,
                child: SvgPicture.asset(
                  'assets/svg/zodiac_wheel/zodiac_sign_${ZodiacSign.values[i].name}.svg',
                  width: 23,
                  height: 23,
                ),
              ),
            }
          ],
        ),
      ),
    );
  }
}

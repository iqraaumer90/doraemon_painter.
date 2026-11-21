import 'package:flutter/material.dart';

class DoraemonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Size(:width, :height) = size;
    final double unit = width / 650;

    // PAINTS

    Paint bluePaint = Paint()
      ..color = const Color(0xFF20A9E8)
      ..style = PaintingStyle.fill;

    Paint whitePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Paint outlinePaint = Paint()
      ..color = const Color(0xFF202020)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2 * unit
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    Paint redPaint = Paint()
      ..color = const Color(0xFFE53935)
      ..style = PaintingStyle.fill;

    Paint yellowPaint = Paint()
      ..color = const Color(0xFFFFD54F)
      ..style = PaintingStyle.fill;

    Paint blackFill = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    // DORAEMON HEAD

    Path headPath = Path();

    headPath.moveTo(width * 0.50, height * 0.08);

    headPath.cubicTo(
      width * 0.32,
      height * 0.08,
      width * 0.20,
      height * 0.19,
      width * 0.20,
      height * 0.36,
    );

    headPath.cubicTo(
      width * 0.20,
      height * 0.53,
      width * 0.32,
      height * 0.64,
      width * 0.50,
      height * 0.64,
    );

    headPath.cubicTo(
      width * 0.68,
      height * 0.64,
      width * 0.80,
      height * 0.53,
      width * 0.80,
      height * 0.36,
    );

    headPath.cubicTo(
      width * 0.80,
      height * 0.19,
      width * 0.68,
      height * 0.08,
      width * 0.50,
      height * 0.08,
    );

    headPath.close();

    canvas.drawPath(headPath, bluePaint);
    canvas.drawPath(headPath, outlinePaint);

    // WHITE FACE

    Path facePath = Path();

    facePath.moveTo(width * 0.50, height * 0.145);

    facePath.cubicTo(
      width * 0.36,
      height * 0.145,
      width * 0.27,
      height * 0.235,
      width * 0.27,
      height * 0.375,
    );

    facePath.cubicTo(
      width * 0.27,
      height * 0.515,
      width * 0.37,
      height * 0.595,
      width * 0.50,
      height * 0.595,
    );

    facePath.cubicTo(
      width * 0.63,
      height * 0.595,
      width * 0.73,
      height * 0.515,
      width * 0.73,
      height * 0.375,
    );

    facePath.cubicTo(
      width * 0.73,
      height * 0.235,
      width * 0.64,
      height * 0.145,
      width * 0.50,
      height * 0.145,
    );

    facePath.close();

    canvas.drawPath(facePath, whitePaint);
    canvas.drawPath(facePath, outlinePaint);

    // LEFT EYE

    canvas.drawOval(
      Rect.fromLTWH(width * 0.382, height * 0.15, width * 0.125, height * 0.17),
      whitePaint,
    );

    canvas.drawOval(
      Rect.fromLTWH(width * 0.382, height * 0.15, width * 0.125, height * 0.17),
      outlinePaint,
    );

    // RIGHT EYE

    canvas.drawOval(
      Rect.fromLTWH(width * 0.493, height * 0.15, width * 0.125, height * 0.17),
      whitePaint,
    );

    canvas.drawOval(
      Rect.fromLTWH(width * 0.493, height * 0.15, width * 0.125, height * 0.17),
      outlinePaint,
    );

    // PUPILS

    canvas.drawCircle(
      Offset(width * 0.455, height * 0.245),
      width * 0.032,
      blackFill,
    );

    canvas.drawCircle(
      Offset(width * 0.545, height * 0.245),
      width * 0.032,
      blackFill,
    );

    // NOSE

    canvas.drawCircle(
      Offset(width * 0.50, height * 0.325),
      width * 0.0385,
      redPaint,
    );

    canvas.drawCircle(
      Offset(width * 0.50, height * 0.325),
      width * 0.0385,
      outlinePaint,
    );

    // NOSE LINE

    canvas.drawLine(
      Offset(width * 0.50, height * 0.36),
      Offset(width * 0.50, height * 0.45),
      outlinePaint,
    );

    // SMILE

    Path mouthPath = Path();

    mouthPath.moveTo(width * 0.36, height * 0.42);

    mouthPath.cubicTo(
      width * 0.39,
      height * 0.49,
      width * 0.44,
      height * 0.51,
      width * 0.50,
      height * 0.51,
    );

    mouthPath.cubicTo(
      width * 0.56,
      height * 0.51,
      width * 0.61,
      height * 0.49,
      width * 0.64,
      height * 0.42,
    );

    canvas.drawPath(mouthPath, outlinePaint);

    // LEFT WHISKERS

    canvas.drawLine(
      Offset(width * 0.33, height * 0.35),
      Offset(width * 0.18, height * 0.35),
      outlinePaint,
    );

    canvas.drawLine(
      Offset(width * 0.33, height * 0.39),
      Offset(width * 0.18, height * 0.40),
      outlinePaint,
    );

    canvas.drawLine(
      Offset(width * 0.33, height * 0.43),
      Offset(width * 0.18, height * 0.46),
      outlinePaint,
    );

    // RIGHT WHISKERS

    canvas.drawLine(
      Offset(width * 0.70, height * 0.35),
      Offset(width * 0.83, height * 0.33),
      outlinePaint,
    );

    canvas.drawLine(
      Offset(width * 0.70, height * 0.39),
      Offset(width * 0.83, height * 0.39),
      outlinePaint,
    );

    canvas.drawLine(
      Offset(width * 0.70, height * 0.43),
      Offset(width * 0.83, height * 0.45),
      outlinePaint,
    );

    // BODY

    Path bodyPath = Path();

    bodyPath.moveTo(width * 0.27, height * 0.55);

    bodyPath.cubicTo(
      width * 0.22,
      height * 0.64,
      width * 0.21,
      height * 0.77,
      width * 0.27,
      height * 0.86,
    );

    bodyPath.cubicTo(
      width * 0.33,
      height * 0.93,
      width * 0.42,
      height * 0.95,
      width * 0.50,
      height * 0.95,
    );

    bodyPath.cubicTo(
      width * 0.58,
      height * 0.95,
      width * 0.67,
      height * 0.93,
      width * 0.73,
      height * 0.86,
    );

    bodyPath.cubicTo(
      width * 0.79,
      height * 0.77,
      width * 0.78,
      height * 0.64,
      width * 0.73,
      height * 0.55,
    );

    bodyPath.close();

    canvas.drawPath(bodyPath, bluePaint);
    canvas.drawPath(bodyPath, outlinePaint);

    // WHITE BELLY

    canvas.drawOval(
      Rect.fromLTWH(width * 0.27, height * 0.53, width * 0.45, height * 0.38),
      whitePaint,
    );

    canvas.drawOval(
      Rect.fromLTWH(width * 0.27, height * 0.53, width * 0.45, height * 0.38),
      outlinePaint,
    );

    // POCKET

    Path pocketPath = Path();

    pocketPath.moveTo(width * 0.36, height * 0.67);
    pocketPath.lineTo(width * 0.64, height * 0.67);

    pocketPath.cubicTo(
      width * 0.64,
      height * 0.76,
      width * 0.58,
      height * 0.81,
      width * 0.50,
      height * 0.81,
    );

    pocketPath.cubicTo(
      width * 0.42,
      height * 0.81,
      width * 0.36,
      height * 0.76,
      width * 0.36,
      height * 0.67,
    );

    pocketPath.close();

    canvas.drawPath(pocketPath, whitePaint);
    canvas.drawPath(pocketPath, outlinePaint);

    // LEFT ARM

    Path leftArmPath = Path();

    leftArmPath.moveTo(width * 0.27, height * 0.56);
    leftArmPath.lineTo(width * 0.20, height * 0.65);
    leftArmPath.lineTo(width * 0.14, height * 0.73);
    leftArmPath.lineTo(width * 0.18, height * 0.78);
    leftArmPath.lineTo(width * 0.25, height * 0.69);
    leftArmPath.lineTo(width * 0.30, height * 0.61);

    leftArmPath.close();

    canvas.drawPath(leftArmPath, bluePaint);
    canvas.drawPath(leftArmPath, outlinePaint);

    // LEFT HAND

    canvas.drawCircle(
      Offset(width * 0.14, height * 0.77),
      width * 0.046,
      whitePaint,
    );

    canvas.drawCircle(
      Offset(width * 0.14, height * 0.77),
      width * 0.046,
      outlinePaint,
    );

    // RIGHT ARM

    Path rightArmPath = Path();

    rightArmPath.moveTo(width * 0.73, height * 0.56);
    rightArmPath.lineTo(width * 0.80, height * 0.65);
    rightArmPath.lineTo(width * 0.86, height * 0.73);
    rightArmPath.lineTo(width * 0.82, height * 0.78);
    rightArmPath.lineTo(width * 0.75, height * 0.69);
    rightArmPath.lineTo(width * 0.70, height * 0.61);

    rightArmPath.close();

    canvas.drawPath(rightArmPath, bluePaint);
    canvas.drawPath(rightArmPath, outlinePaint);

    // RIGHT HAND

    canvas.drawCircle(
      Offset(width * 0.85, height * 0.77),
      width * 0.046,
      whitePaint,
    );

    canvas.drawCircle(
      Offset(width * 0.85, height * 0.77),
      width * 0.046,
      outlinePaint,
    );

    // RIGHT SIDE DETAIL

    canvas.drawLine(
      Offset(width * 0.73, height * 0.86),
      Offset(width * 0.80, height * 0.90),
      outlinePaint,
    );

    canvas.drawCircle(
      Offset(width * 0.78, height * 0.89),
      width * 0.031,
      redPaint,
    );

    canvas.drawCircle(
      Offset(width * 0.78, height * 0.89),
      width * 0.031,
      outlinePaint,
    );

    // LEFT FOOT

    Path leftFootPath = Path();

    leftFootPath.moveTo(width * 0.34, height * 0.90);
    leftFootPath.lineTo(width * 0.30, height * 0.93);

    leftFootPath.cubicTo(
      width * 0.27,
      height * 0.96,
      width * 0.28,
      height * 0.99,
      width * 0.34,
      height * 1.00,
    );

    leftFootPath.cubicTo(
      width * 0.40,
      height * 1.00,
      width * 0.44,
      height * 0.98,
      width * 0.44,
      height * 0.95,
    );

    leftFootPath.cubicTo(
      width * 0.44,
      height * 0.92,
      width * 0.40,
      height * 0.90,
      width * 0.34,
      height * 0.90,
    );

    leftFootPath.close();

    canvas.drawPath(leftFootPath, whitePaint);
    canvas.drawPath(leftFootPath, outlinePaint);

    // RIGHT FOOT

    Path rightFootPath = Path();

    rightFootPath.moveTo(width * 0.66, height * 0.90);
    rightFootPath.lineTo(width * 0.70, height * 0.93);

    rightFootPath.cubicTo(
      width * 0.73,
      height * 0.96,
      width * 0.72,
      height * 0.99,
      width * 0.66,
      height * 1.00,
    );

    rightFootPath.cubicTo(
      width * 0.60,
      height * 1.00,
      width * 0.56,
      height * 0.98,
      width * 0.56,
      height * 0.95,
    );

    rightFootPath.cubicTo(
      width * 0.56,
      height * 0.92,
      width * 0.60,
      height * 0.90,
      width * 0.66,
      height * 0.90,
    );

    rightFootPath.close();

    canvas.drawPath(rightFootPath, whitePaint);
    canvas.drawPath(rightFootPath, outlinePaint);

    // RED COLLAR

    Path collarPath = Path();

    collarPath.moveTo(width * 0.25, height * 0.53);
    collarPath.lineTo(width * 0.25, height * 0.55);
    collarPath.lineTo(width * 0.75, height * 0.55);
    collarPath.lineTo(width * 0.75, height * 0.53);

    collarPath.close();

    canvas.drawPath(collarPath, redPaint);
    canvas.drawPath(collarPath, outlinePaint);

    // YELLOW BELL

    canvas.drawCircle(
      Offset(width * 0.50, height * 0.56),
      width * 0.035,
      yellowPaint,
    );

    canvas.drawCircle(
      Offset(width * 0.50, height * 0.56),
      width * 0.035,
      outlinePaint,
    );

    // BELL DETAILS

    Path bellLines = Path();

    bellLines.moveTo(width * 0.469, height * 0.54);
    bellLines.lineTo(width * 0.532, height * 0.54);

    bellLines.moveTo(width * 0.465, height * 0.55);
    bellLines.lineTo(width * 0.535, height * 0.55);

    canvas.drawPath(bellLines, outlinePaint);

    canvas.drawCircle(
      Offset(width * 0.50, height * 0.57),
      width * 0.0092,
      blackFill,
    );

    Path smallBellLine = Path();

    smallBellLine.moveTo(width * 0.50, height * 0.60);
    smallBellLine.lineTo(width * 0.50, height * 0.58);

    canvas.drawPath(smallBellLine, outlinePaint);
  }

  @override
  bool shouldRepaint(covariant DoraemonPainter oldDelegate) {
    return false;
  }
}

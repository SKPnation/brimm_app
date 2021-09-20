import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BNBCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    final a =  Offset(size.width * 1/6, size.height * 1/4);
    final b =  Offset(size.width * 5/6, size.height * 3/4);
    final rect = Rect.fromPoints(a, b);
    final radius = Radius.circular(12.0);

    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
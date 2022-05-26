import 'dart:math';

import 'package:flutter/material.dart';

class StrokeShapePainter extends CustomPainter {
  StrokeShapePainter({
    required this.color,
    required this.strokeWidth,
    required this.rotation,
  }) : _paint = Paint()
          ..color = color
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.stroke;

  final Color color;
  final double strokeWidth;
  final double rotation;
  final Paint _paint;

  Paint get paintUI => _paint;

  @override
  void paint(Canvas canvas, Size size) {
    final double radians = rotation * pi / 180;
    canvas.rotate(radians);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

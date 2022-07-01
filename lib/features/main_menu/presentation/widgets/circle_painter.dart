import 'dart:math';

import 'package:flutter/material.dart';

import 'stroke_shape_painter.dart';

class CirclePainterWidget extends StrokeShapePainter {
  CirclePainterWidget(
      {required super.color,
      required super.strokeWidth,
      required super.rotation});

  @override
  void paint(Canvas canvas, Size size) {
    super.paint(canvas, size);
    final Offset center = Offset(size.width * 0.5, size.height * 0.5);
    final double radius = min(size.width * 0.5, size.height * 0.5);
    canvas.drawCircle(center, radius, paintUI);
  }
}

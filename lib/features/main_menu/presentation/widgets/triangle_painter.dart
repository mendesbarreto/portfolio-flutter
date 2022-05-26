import 'package:flutter/material.dart';

import 'stroke_shape_painter.dart';

class TrianglePainter extends StrokeShapePainter {
  TrianglePainter(
      {required super.color,
      required super.strokeWidth,
      required super.rotation});

  @override
  void paint(Canvas canvas, Size size) {
    super.paint(canvas, size);

    final Path path = Path()
      ..moveTo(size.width * 0.5, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.height, size.width)
      ..close();

    canvas.drawPath(path, paintUI);
  }
}

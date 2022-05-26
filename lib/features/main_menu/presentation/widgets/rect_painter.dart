import 'package:flutter/material.dart';

import 'stroke_shape_painter.dart';

class RectPainter extends StrokeShapePainter {
  RectPainter(
      {required super.color,
      required super.strokeWidth,
      required super.rotation});

  @override
  void paint(Canvas canvas, Size size) {
    super.paint(canvas, size);
    final Offset center = Offset(size.width * 0.5, size.height * 0.5);
    final Rect rect =
        Rect.fromCenter(center: center, width: size.width, height: size.height);

    canvas.drawRect(rect, paintUI);
  }
}

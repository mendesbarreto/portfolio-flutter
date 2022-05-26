import 'package:flutter/material.dart';

import 'circle_painter.dart';
import 'rect_painter.dart';
import 'triangle_painter.dart';

class ContainerShapes extends StatelessWidget {
  const ContainerShapes({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        ...children,
        Positioned(
          top: 69,
          right: 53,
          child: CustomPaint(
            painter: RectPainter(
                color: Theme.of(context).primaryColor,
                strokeWidth: 2.5,
                rotation: 26),
            size: const Size(16, 16),
          ),
        ),
        Positioned(
          bottom: 24,
          right: 33,
          child: CustomPaint(
            painter: TrianglePainter(
                color: Colors.red, strokeWidth: 2.5, rotation: 0),
            size: const Size(16, 16),
          ),
        ),
        Positioned(
          top: 52,
          left: 520,
          child: CustomPaint(
            painter: CirclePainter(
                color: Colors.lightGreenAccent, strokeWidth: 2.5, rotation: 0),
            size: const Size(16, 16),
          ),
        ),
        Positioned(
          bottom: 71,
          right: 396,
          child: CustomPaint(
            painter: CirclePainter(
                color: Theme.of(context).primaryColor,
                strokeWidth: 2.5,
                rotation: 0),
            size: const Size(16, 16),
          ),
        ),
        Positioned(
          bottom: 112,
          left: 373,
          child: CustomPaint(
            painter: RectPainter(
                color: Colors.blueAccent, strokeWidth: 2.5, rotation: 26),
            size: const Size(16, 16),
          ),
        ),
        Positioned(
          top: 30,
          left: 40,
          child: CustomPaint(
            painter: CirclePainter(
                color: Theme.of(context).primaryColor,
                strokeWidth: 2.5,
                rotation: 0),
            size: const Size(16, 16),
          ),
        ),
        Positioned(
          bottom: 29,
          left: 78,
          child: CustomPaint(
            painter: CirclePainter(
                color: Colors.lightGreenAccent, strokeWidth: 2.5, rotation: 0),
            size: const Size(16, 16),
          ),
        ),
      ],
    );
  }
}

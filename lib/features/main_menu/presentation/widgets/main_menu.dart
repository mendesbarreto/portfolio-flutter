
import 'dart:math';

import 'package:flutter/material.dart';

class TrianglePainter extends CustomPainter {
  TrianglePainter(this.color, this.strokeWidth);

  final Color color;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Offset center = Offset(size.width * 0.5, size.height * 0.5);

    final Path path = Path()
    ..moveTo(size.width * 0.5, 0)
    ..lineTo(0, size.height)
    ..lineTo(size.height, size.width)
    ..close();


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class RectPainter extends CustomPainter {
  RectPainter(this.color, this.strokeWidth);

  final Color color;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Offset center = Offset(size.width * 0.5, size.height * 0.5);
    final Rect rect = Rect.fromCenter(center: center, width: size.width, height: size.height);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CirclePainter extends CustomPainter {
  CirclePainter(this.color, this.strokeWidth);

  final Color color;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Offset center = Offset(size.width * 0.5, size.height * 0.5);
    final double radius = min(size.width * 0.5, size.height * 0.5);

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class BasicButton extends StatelessWidget {
  const BasicButton({required this.text, required this.onPressed, this.rightImage});

  final String text;
  final Image? rightImage;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(primary: Theme.of(context).buttonColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(text, style: const TextStyle(color: Colors.black)),
          if(rightImage != null) const SizedBox(width: 8),
          if(rightImage != null) rightImage!,
        ],
      ),
    );
  }
}

class MainMenuAbout extends StatelessWidget {
  const MainMenuAbout({
    super.key,
    required this.title,
    required this.titleRole,
    required this.description,
  });

  final String title;
  final String titleRole;
  final String description;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(57, 8, 57, 0),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline3,
                        text: title,
                        children: <TextSpan>[
                          TextSpan(text: titleRole, style: TextStyle(color: Theme.of(context).primaryColor)),
                        ]
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(height: 48),
                  SizedBox(
                    height: 52,
                    width: 154,
                    child: BasicButton(
                      onPressed: () {},
                      rightImage: Image.asset('assets/images/icon_arrow_right.png'),
                      text: 'Hire me'.toUpperCase(),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Image.asset('assets/images/profile_place_holder.png'),
            ],
          ),
            Positioned(
              top: 69,
              right: 53,
              child: CustomPaint(
                painter: RectPainter(Theme.of(context).primaryColor, 2.5),
                size: const Size(16, 16),
              ),
            ),
            Positioned(
              bottom: 24,
              right: 33,
              child: CustomPaint(
                painter: TrianglePainter(Colors.red, 2.5),
                size: const Size(16, 16),
              ),
            ),
            Positioned(
              top: 52,
              left: 520,
              child: CustomPaint(
                painter: CirclePainter(Colors.lightGreenAccent, 2.5),
                size: const Size(16, 16),
              ),
            ),
            Positioned(
              bottom: 71,
              right: 396,
              child: CustomPaint(
                painter: CirclePainter(Theme.of(context).primaryColor, 2.5),
                size: const Size(16, 16),
              ),
            ),
            Positioned(
              bottom: 112,
              left: 373,
              child: CustomPaint(
                painter: RectPainter(Colors.blueAccent, 2.5),
                size: const Size(16, 16),
              ),
            ),
            Positioned(
              top: 30,
              left: 40,
              child: CustomPaint(
                painter: CirclePainter(Theme.of(context).primaryColor, 2.5),
                size: const Size(16, 16),
              ),
            ),
            Positioned(
              bottom: 29,
              left: 78,
              child: CustomPaint(
                painter: CirclePainter(Colors.lightGreenAccent, 2.5),
                size: const Size(16, 16),
              ),
            ),
          ],
        ),
      );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(child:
        FractionallySizedBox(
        widthFactor: 0.65,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            MainMenuAbout(
              title: 'I’m Douglas Mendes \n',
              titleRole: 'Software Engineer',
              description:
                  '12 years of experience in developing and deploying \n'
                  'applications. I have worked with a wide range of \n'
                  'technologies, process and tools from \n'
                  'front-end to backend-end'
            ),

          ],
        ),
      )
    );
  }
}

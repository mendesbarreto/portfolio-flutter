import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.image,
    this.size,
    this.iconSize,
    required this.onPressed,
  });

  final Image image;
  final VoidCallback onPressed;
  final Size? size;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size?.height ?? 24,
      width: size?.width ?? 24,
      child: Ink(
        decoration: ShapeDecoration(
          color: Theme.of(context).primaryColor,
          shape: const CircleBorder(),
        ),
        child: IconButton(
          padding: const EdgeInsets.all(0),
          alignment: Alignment.center,
          icon: image,
          iconSize: iconSize ?? 14,
          onPressed: () {},
        ),
      ),
    );
  }
}

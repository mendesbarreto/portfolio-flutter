import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.imageAsset,
    this.size,
    this.iconSize,
    required this.onPressed,
  });

  final Image imageAsset;
  final VoidCallback onPressed;
  final Size? size;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size?.height ?? 24,
      width: size?.width ?? 24,
      child: InkWell(
        child: Ink(
          decoration: ShapeDecoration(
            color: Theme.of(context).primaryColor,
            shape: const CircleBorder(),
          ),
          child: IconButton(
            splashRadius: size?.width ?? 16,
            padding: const EdgeInsets.all(0),
            icon: ImageIcon(
              imageAsset.image,
              size: iconSize ?? 14,
            ),
            iconSize: iconSize ?? 10,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

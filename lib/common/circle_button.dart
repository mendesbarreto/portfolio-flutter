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
    final Size size = this.size ?? const Size(24, 24);
    final double iconSize = this.iconSize ?? 16;

    return Container(
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: Theme.of(context).primaryColor,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(size.width * 0.5)),
          onTap: () => {},
          child: SizedOverflowBox(
            size: size,
            child: Container(
              height: iconSize,
              width: iconSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageAsset.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    //   SizedBox(
    //   height: size?.height ?? 24,
    //   width: size?.width ?? 24,
    //   child: InkWell(
    //     child: Ink(
    //       decoration: ShapeDecoration(
    //         color: Theme.of(context).primaryColor,
    //         shape: const CircleBorder(),
    //       ),
    //       child: IconButton(
    //         splashRadius: size?.width ?? 16,
    //         padding: const EdgeInsets.all(0),
    //         icon: ImageIcon(
    //           imageAsset.image,
    //           size: iconSize ?? 14,
    //         ),
    //         iconSize: iconSize ?? 10,
    //         onPressed: () {},
    //       ),
    //     ),
    //   ),
    // );
  }
}

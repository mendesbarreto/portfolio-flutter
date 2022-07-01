import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  const BasicButton(
      {super.key, required this.text, this.rightImage, this.onPressed});

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
          if (rightImage != null) const SizedBox(width: 8),
          if (rightImage != null) rightImage!,
        ],
      ),
    );
  }
}

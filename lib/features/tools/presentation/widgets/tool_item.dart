import 'package:flutter/material.dart';

import '../../../../common/presentation/widget/r.dart';

class ToolItem extends StatelessWidget {
  const ToolItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: R.iconTools.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(width: 10),
      Text(text)
    ]);
  }
}

import 'package:flutter/material.dart';

class ItemSeparator extends StatelessWidget {
  const ItemSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        height: 1,
        color: Colors.grey[300],
      ),
    );
  }
}

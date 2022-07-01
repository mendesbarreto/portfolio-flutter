import 'package:flutter/material.dart';

class RightMenuWidget extends StatelessWidget {
  const RightMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
    );
  }
}

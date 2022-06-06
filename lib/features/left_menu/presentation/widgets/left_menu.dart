import 'package:flutter/material.dart';

import '../../../profile/presentation/widgets/profile.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 305,
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        height: MediaQuery.of(context).size.height,
        width: 219,
        child: const Profile(),
      ),
    );
  }
}

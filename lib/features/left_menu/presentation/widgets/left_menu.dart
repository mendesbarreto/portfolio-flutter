import 'package:flutter/material.dart';

import '../../../languages/presentation/widgets/languages.dart';
import '../../../profile/presentation/widgets/profile.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 305,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Ink(
            color: Colors.white,
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              width: 305,
              child: const Profile(),
            ),
          ),
          const SizedBox(
            height: 20,
            child: Languages(),
          ),
        ],
      ),
    );
  }
}

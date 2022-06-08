import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../languages/presentation/widgets/languages.dart';
import '../../../profile/presentation/widgets/profile.dart';

class LeftMenuItemSeparator extends StatelessWidget {
  const LeftMenuItemSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      padding: const EdgeInsets.all(40),
      color: Colors.grey[300],
    );
  }
}

class LeftMenu extends StatelessWidget {
  const LeftMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 305,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Ink(
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                width: 305,
                child: const Profile(),
              ),
            ),
            const LeftMenuItemSeparator(),
            const Languages(),
          ],
        ),
      ),
    );
  }
}

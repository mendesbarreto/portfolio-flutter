import 'package:flutter/material.dart';

import '../../../languages/presentation/widgets/languages.dart';
import '../../../profile/presentation/widgets/profile.dart';
import 'left_menu_item_separator.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50, bottom: 20),
            child: Profile(),
          ),
          LeftMenuItemSeparator(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Languages(),
          ),
        ],
      ),
    );
  }
}

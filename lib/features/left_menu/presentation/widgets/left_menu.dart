import 'package:flutter/material.dart';

import '../../../../common/basic_button.dart';
import '../../../../common/r.dart';
import '../../../languages/presentation/widgets/languages.dart';
import '../../../profile/presentation/widgets/profile.dart';
import '../../../skills/presentation/widgets/programming_languages.dart';
import '../../../tools/presentation/widgets/tools.dart';
import 'left_menu_item_separator.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 20),
            child: Profile(),
          ),
          const LeftMenuItemSeparator(),
          const Padding(padding: EdgeInsets.all(20), child: Tools()),
          const LeftMenuItemSeparator(),
          const Padding(
              padding: EdgeInsets.all(20), child: ProgrammingLanguages()),
          const LeftMenuItemSeparator(),
          const Padding(padding: EdgeInsets.all(20), child: Languages()),
          const LeftMenuItemSeparator(),
          Container(
            height: 50,
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: BasicButton(
              onPressed: () {},
              rightImage: R.iconDownload,
              text: 'Download CV'.toUpperCase(),
            ),
          )
        ],
      ),
    );
  }
}

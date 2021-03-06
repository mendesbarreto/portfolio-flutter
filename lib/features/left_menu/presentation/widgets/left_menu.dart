import 'package:flutter/material.dart';

import '../../../../common/presentation/widget/basic_button.dart';
import '../../../../common/presentation/widget/item_separator.dart';
import '../../../../common/presentation/widget/r.dart';
import '../../../languages/presentation/widgets/languages.dart';
import '../../../profile/presentation/widgets/profile.dart';
import '../../../skills/presentation/widgets/programming_languages.dart';
import '../../../tools/presentation/widgets/tools.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 20),
            child: ProfileWidget(),
          ),
          const ItemSeparator(),
          const Padding(padding: EdgeInsets.all(20), child: ToolsWidget()),
          const ItemSeparator(),
          const Padding(
              padding: EdgeInsets.all(20), child: ProgrammingLanguagesWidget()),
          const ItemSeparator(),
          const Padding(padding: EdgeInsets.all(20), child: LanguagesWidget()),
          const ItemSeparator(),
          Container(
            height: 50,
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: BasicButton(
              onPressed: () {},
              rightImage: R.iconDownload,
              text: 'Download CV'.toUpperCase(),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

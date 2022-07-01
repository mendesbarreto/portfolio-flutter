import 'package:flutter/material.dart';

import '../../../../common/presentation/widget/r.dart';
import 'container_shapes.dart';
import 'main_menu_content.dart';

class MainMenuAboutWidget extends StatelessWidget {
  const MainMenuAboutWidget({
    super.key,
    required this.title,
    required this.titleRole,
    required this.description,
  });

  final String title;
  final String titleRole;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ContainerShapes(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(40, 8, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MainMenuContentWidget(
                    title: title,
                    titleRole: titleRole,
                    description: description),
                Container(
                    height: 460,
                    width: 326,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: R.profilePlaceHolder.image,
                        fit: BoxFit.contain,
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

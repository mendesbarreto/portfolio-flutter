import 'package:flutter/material.dart';

import 'container_shapes.dart';
import 'main_menu_content.dart';

class MainMenuAbout extends StatelessWidget {
  const MainMenuAbout({
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
      padding: const EdgeInsets.fromLTRB(57, 8, 57, 0),
      child: ContainerShapes(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MainMenuContent(
                  title: title, titleRole: titleRole, description: description),
              const SizedBox(width: 16),
              Image.asset('assets/images/profile_place_holder.png'),
            ],
          ),
        ],
      ),
    );
  }
}

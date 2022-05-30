import 'package:flutter/material.dart';

import 'main_menu_about.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 1200, maxWidth: 1500),
        child: Flexible(
            child: FractionallySizedBox(
          widthFactor: 0.65,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              MainMenuAbout(
                  title: 'I’m Douglas Mendes \n',
                  titleRole: 'Software Engineer',
                  description:
                      '12 years of experience in developing and deploying \n'
                      'applications. I have worked with a wide range of \n'
                      'technologies, process and tools from \n'
                      'front-end to backend-end'),
            ],
          ),
        )));
  }
}

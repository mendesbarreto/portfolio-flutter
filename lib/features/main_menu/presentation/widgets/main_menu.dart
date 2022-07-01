import 'package:flutter/material.dart';

import 'main_menu_about.dart';

class MainMenuWidget extends StatelessWidget {
  const MainMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        MainMenuAboutWidget(
            title: 'I’m Douglas Mendes \n',
            titleRole: 'Software Engineer',
            description: '12 years of experience in developing and deploying \n'
                'applications. I have worked with a wide range of \n'
                'technologies, process and tools from \n'
                'front-end to backend-end'),
      ],
    );
  }
}

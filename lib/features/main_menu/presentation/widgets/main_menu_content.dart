import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../common/basic_button.dart';

class MainMenuContent extends StatelessWidget {
  const MainMenuContent({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
              style: Theme.of(context).textTheme.headline3,
              text: title,
              children: <TextSpan>[
                TextSpan(
                    text: titleRole,
                    style: TextStyle(color: Theme.of(context).primaryColor)),
              ]),
        ),
        const SizedBox(height: 18),
        Text(
          description,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 48),
        SizedBox(
          height: 52,
          width: 154,
          child: BasicButton(
            onPressed: () {},
            rightImage: Image.asset('assets/images/icon_arrow_right.png'),
            text: 'Hire me'.toUpperCase(),
          ),
        ),
      ],
    );
  }
}

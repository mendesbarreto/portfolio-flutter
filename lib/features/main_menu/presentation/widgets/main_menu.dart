
import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {

  const BasicButton({required this.text, required this.onPressed, this.rightImage});

  final String text;
  final Image? rightImage;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(primary: Theme.of(context).buttonColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(text, style: const TextStyle(color: Colors.black)),
          if(rightImage != null) const SizedBox(width: 8),
          if(rightImage != null) rightImage!,
        ],
      ),
    );
  }
}

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
    return Row(
      children: <Widget>[
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline3,
                  text: title,
                  children: <TextSpan>[
                    TextSpan(text: titleRole, style: TextStyle(color: Theme.of(context).primaryColor)),
                  ]
              ),
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
        ),
        const SizedBox(width: 16),
        Image.asset('assets/images/profile_place_holder.png'),
      ],
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
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
                'front-end to backend-end'
          )
        ],
      ),
    );
  }
}

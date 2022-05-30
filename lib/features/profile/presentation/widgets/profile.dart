import 'package:flutter/material.dart';

import '../../../../common/app_theme_data.dart';
import '../../../../common/circle_button.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required this.image,
  });

  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: image.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

extension AppColors on Colors {
  Color get portfolioLightGray => const Color(0xff767676);
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ProfileImage(
        image: Image.asset('assets/images/profile_place_holder.png'),
      ),
      const SizedBox(height: 32),
      const Text(
        'Douglas Mendes',
        style: TextStyle(
          fontSize: 18,
          height: 24.0 / 15,
          fontWeight: FontWeight.normal,
        ),
      ),
      const SizedBox(height: 16),
      Text(
        'Software Engineer',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Theme.of(context).portfolioLightGray,
          height: 24.0 / 15,
        ),
      ),
      const SizedBox(height: 16),
      CircleButton(
          onPressed: () {},
          image: Image.asset('assets/images/icon_arrow_right.png')),
    ]);
  }
}

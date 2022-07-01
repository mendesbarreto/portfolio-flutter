import 'package:flutter/material.dart';

import '../../../../common/presentation/widget/app_theme_data.dart';
import '../../../../common/presentation/widget/circle_button.dart';
import '../../../../common/presentation/widget/r.dart';
import 'profile_image.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ProfileImage(
        image: R.profileImage,
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
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleButton(onPressed: () {}, imageAsset: R.iconFacebook),
          const SizedBox(width: 15),
          CircleButton(onPressed: () {}, imageAsset: R.iconTwitter),
          const SizedBox(width: 15),
          CircleButton(onPressed: () {}, imageAsset: R.iconLinkedIn),
          const SizedBox(width: 15),
          CircleButton(onPressed: () {}, imageAsset: R.iconGithub),
        ],
      ),
    ]);
  }
}

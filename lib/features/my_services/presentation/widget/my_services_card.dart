import 'package:flutter/material.dart';

class MyServicesCardWidget extends StatelessWidget {
  const MyServicesCardWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.icon});

  final Image icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 68,
              width: 68,
              child: Image(
                  image: icon.image, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(height: 32),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 22),
            Text(
              description,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ]),
    );
  }
}

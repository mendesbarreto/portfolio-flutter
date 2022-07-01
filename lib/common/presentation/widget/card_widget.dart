import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.title,
      required this.platform,
      required this.image});

  final ImageProvider image;
  final String title;
  final String platform;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: image,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            height: 40,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(650),
              ),
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                    text: 'Title: ',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: title,
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  )),
                  RichText(
                      text: TextSpan(
                    text: 'Platforms: ',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: platform,
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(title, style: Theme.of(context).textTheme.headline4),
        const SizedBox(height: 32),
        FractionallySizedBox(
          widthFactor: 0.4,
          child: Text(description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'my_services_grid.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('My Services', style: Theme.of(context).textTheme.headline4),
        const SizedBox(height: 32),
        FractionallySizedBox(
          widthFactor: 0.4,
          child: Text(
              'All these services below are available to anyone who would like to hire me, '
              'whether for a full-time job or a limited amount of hours.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        const SizedBox(height: 32),
        const MyServicesGrid()
      ],
    );
  }
}

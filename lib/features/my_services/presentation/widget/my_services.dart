import 'package:flutter/material.dart';

import '../../../../common/page_header.dart';
import 'my_services_grid.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        PageHeader(
            title: 'My Services',
            description:
                'All these services below are available to anyone who would like to hire me, '
                'whether for a full-time job or a limited amount of hours.'),
        SizedBox(height: 32),
        MyServicesGrid()
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../common/page_header.dart';

class CareerCard extends StatelessWidget {
  const CareerCard(
      {super.key,
      required this.title,
      required this.startDate,
      required this.endDate,
      required this.organizationName,
      required this.description});

  final String title;
  final DateTime startDate;
  final DateTime endDate;
  final String organizationName;
  final String description;

  @override
  Widget build(BuildContext buildContext) {
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(buildContext).textTheme.titleLarge,
                ),
                const SizedBox(height: 32),
                Row(
                  children: <Widget>[
                    Text('Full time',
                        style: Theme.of(buildContext).textTheme.subtitle2),
                    const SizedBox(width: 22),
                    Container(
                      width: 110,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Theme.of(buildContext).primaryColor,
                      ),
                      child: Text(
                        '${startDate.month}/${startDate.year} - ${endDate.month}/${endDate.year}',
                        style: Theme.of(buildContext).textTheme.subtitle2,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  organizationName,
                  style: Theme.of(buildContext).textTheme.titleLarge,
                ),
                const SizedBox(height: 32),
                Text(
                  description,
                  style: Theme.of(buildContext).textTheme.subtitle1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WorkHistory extends StatelessWidget {
  const WorkHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const PageHeader(
            title: 'Work History',
            description:
                'Some of my last pass experiences, summarized here for your reference. '
                'More information is available on liked in'),
        const SizedBox(height: 32),
        CareerCard(
            title: 'Software Engineering Manager',
            startDate: DateTime.parse('1988-06-04'),
            endDate: DateTime.parse('1988-06-04'),
            organizationName: 'Xpertsea Inc.',
            description:
                'Xpertsea Inc. is a software company that specializes in '
                "software development. I was a manager of the company's "
                "development team, and oversaw the development of the company's "
                'software products.'),
      ],
    );
  }
}

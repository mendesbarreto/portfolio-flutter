import 'package:flutter/material.dart';

import '../../../../common/presentation/widget/item_separator.dart';
import '../../../../common/presentation/widget/page_header.dart';
import 'career_card.dart';

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
        const SizedBox(height: 40),
        Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              CareerCard(
                  title: 'Software Eng Manager',
                  startDate: DateTime.parse('1988-06-04'),
                  endDate: DateTime.parse('1988-06-04'),
                  organizationName: 'Xpertsea Inc.',
                  description:
                      'Xpertsea Inc. is a software company that specializes in '
                      "software development. I was a manager of the company's "
                      "development team, and oversaw the development of the company's "
                      'software products.'),
              const ItemSeparator(),
              CareerCard(
                  title: 'Software Eng Manager',
                  startDate: DateTime.parse('1988-06-04'),
                  endDate: DateTime.parse('1988-06-04'),
                  organizationName: 'Xpertsea Inc.',
                  description:
                      'Xpertsea Inc. is a software company that specializes in '
                      "software development. I was a manager of the company's "
                      "development team, and oversaw the development of the company's "
                      'software products.'),
              const ItemSeparator(),
              CareerCard(
                  title: 'Software Eng Manager',
                  startDate: DateTime.parse('1988-06-04'),
                  endDate: DateTime.parse('1988-06-04'),
                  organizationName: 'Xpertsea Inc.',
                  description:
                      'Xpertsea Inc. is a software company that specializes in '
                      "software development. I was a manager of the company's "
                      "development team, and oversaw the development of the company's "
                      'software products.'),
            ],
          ),
        ),
      ],
    );
  }
}

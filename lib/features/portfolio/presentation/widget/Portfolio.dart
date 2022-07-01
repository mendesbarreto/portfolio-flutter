import 'package:flutter/material.dart';

import '../../../../common/page_header.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const PageHeader(
          title: 'Portfolio',
          description:
              'Some of my last pass experiences, summarized here for your '
              'reference. More information is available on linkedin.',
        ),
        const SizedBox(height: 32),
        GridView.count(
          primary: false,
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          shrinkWrap: true,
          childAspectRatio: 1.4,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_2.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_3.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_4.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_5.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_6.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_7.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_8.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_9.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_10.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/portfolio/portfolio_11.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        )
      ],
    );
  }
}

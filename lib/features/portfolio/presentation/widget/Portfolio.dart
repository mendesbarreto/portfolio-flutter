import 'package:flutter/material.dart';

import '../../../../common/card_widget.dart';
import '../../../../common/page_header.dart';
import '../../../../common/r.dart';

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
            CardWidget(
                title: 'Itaú Mobile Bank App',
                platform: 'iOS, Android',
                image: R.portfolioPlaceHolder.image),
            CardWidget(
                title: 'Itaú Mobile Bank App',
                platform: 'iOS, Android',
                image: R.portfolioPlaceHolder.image),
            CardWidget(
                title: 'Itaú Mobile Bank App',
                platform: 'iOS, Android',
                image: R.portfolioPlaceHolder.image),
            CardWidget(
                title: 'Itaú Mobile Bank App',
                platform: 'iOS, Android',
                image: R.portfolioPlaceHolder.image),
            CardWidget(
                title: 'Itaú Mobile Bank App',
                platform: 'iOS, Android',
                image: R.portfolioPlaceHolder.image),
            CardWidget(
                title: 'Itaú Mobile Bank App',
                platform: 'iOS, Android',
                image: R.portfolioPlaceHolder.image),
          ],
        )
      ],
    );
  }
}

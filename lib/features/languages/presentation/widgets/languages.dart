import 'package:flutter/material.dart';

import '../../../../common/percentage_bar_with_text.dart';

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      PercentageBarWithText(
          text: 'Portuguese',
          percentage: 100,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'English',
          percentage: 85,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'French',
          percentage: 75,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
    ]);
  }
}

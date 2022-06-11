import 'package:flutter/material.dart';

import '../../../../common/percentage_bar_with_text.dart';

class ProgrammingLanguages extends StatelessWidget {
  const ProgrammingLanguages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(bottom: 20),
          child:
              Text('Languages', style: Theme.of(context).textTheme.titleSmall)),
      PercentageBarWithText(
          text: 'Swift',
          percentage: 100,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'C#',
          percentage: 100,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'Typescript',
          percentage: 80,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'JavaScript',
          percentage: 80,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'Go Lang',
          percentage: 60,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'Dart',
          percentage: 30,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'Rust',
          percentage: 50,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'JAVA',
          percentage: 60,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'C++',
          percentage: 70,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'Objective-C',
          percentage: 50,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
      const SizedBox(height: 10),
      PercentageBarWithText(
          text: 'Ruby',
          percentage: 30,
          color: Theme.of(context).primaryColor,
          barHeight: 8),
    ]);
  }
}

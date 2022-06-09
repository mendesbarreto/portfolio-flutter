import 'package:flutter/material.dart';

import 'percentage_bar.dart';

class PercentageBarWithText extends StatelessWidget {
  PercentageBarWithText({
    super.key,
    required this.text,
    required double percentage,
    required Color color,
    required this.barHeight,
  })  : percentageBar = PercentageBar(color: color, percentage: percentage),
        percentageString = '$percentage%';

  final String text;
  final PercentageBar percentageBar;
  final double barHeight;
  final String percentageString;

  @override
  Widget build(BuildContext context) {
    //return percentageBar;

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text(text), Text(percentageString)],
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: barHeight,
          child: percentageBar,
        ),
      ],
    );
  }
}

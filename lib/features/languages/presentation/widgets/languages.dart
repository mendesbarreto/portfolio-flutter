import 'package:flutter/material.dart';

class PercentageBar extends StatelessWidget {
  const PercentageBar(
      {super.key, required this.percentage, required this.color});

  final double percentage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double width = constraints.maxWidth;
        final double height = constraints.maxHeight;
        final double barProgress = width * (percentage / 100);

        return Container(
          color: Colors.white,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Container(
                height: height,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(width * 0.5),
                  border: Border.all(
                    color: color,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.5),
                child: SizedBox(
                  width: barProgress,
                  height: height * 0.8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(width * 0.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

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

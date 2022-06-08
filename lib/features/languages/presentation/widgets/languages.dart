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
        final double barProgress = width * (percentage / 100);

        return Container(
          color: Colors.white,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(width * 0.5),
                  border: Border.all(
                    color: color,
                    width: 2,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: barProgress,
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

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return PercentageBar(percentage: 10, color: Colors.red);
  }
}

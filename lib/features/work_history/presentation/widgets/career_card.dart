import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  children: <Widget>[
                    Text('Full time',
                        style: Theme.of(buildContext).textTheme.subtitle2),
                    const SizedBox(width: 22),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(buildContext).primaryColor,
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        '${DateFormat.yMMMM().format(startDate)} - ${DateFormat.yMMMM().format(endDate)}',
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 11),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 120),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  organizationName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
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

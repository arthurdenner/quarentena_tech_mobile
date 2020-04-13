import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/constants.dart';

class ThingsList extends StatelessWidget {
  const ThingsList({
    Key key,
    @required this.status,
    @required this.things,
  }) : super(key: key);

  final String status;
  final List<Thing> things;

  @override
  Widget build(BuildContext context) {
    if (status == 'pending') {
      return Container(
        height: 100,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: things.map((thing) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(thing.title),
          ),
        );
      }).toList(),
    );
  }
}

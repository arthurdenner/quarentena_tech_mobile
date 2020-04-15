import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page/widgets/things_list/thing_card/thing_card.dart';

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
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return ListView.builder(
      itemCount: things.length,
      itemBuilder: (_, index) => ThingCard(thing: things[index]),
      physics: BouncingScrollPhysics(),
    );
  }
}

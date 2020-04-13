import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/thing_card/thing_card_footer.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/thing_card/thing_card_header.dart';

class ThingCard extends StatelessWidget {
  const ThingCard({
    Key key,
    @required this.thing,
  }) : super(key: key);

  final Thing thing;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ThingCardHeader(
              thing: thing,
            ),
            _buildDivider(),
            _buildBody(thing),
            _buildDivider(),
            ThingCardFooter(),
          ],
        ),
      ),
    );
  }

  Divider _buildDivider() => const Divider(height: 30);

  Widget _buildBody(Thing thing) {
    return Text(
      thing.content,
      style: TextStyle(
        height: 1.2,
      ),
    );
  }
}

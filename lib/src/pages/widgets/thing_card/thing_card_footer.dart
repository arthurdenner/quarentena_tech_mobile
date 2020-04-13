import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/thing_card/details_button.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/thing_card/share_button.dart';

class ThingCardFooter extends StatelessWidget {
  const ThingCardFooter({
    Key key,
    @required this.thing,
  }) : super(key: key);

  final Thing thing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ShareButton(
          url: thing.url,
        ),
        SizedBox(height: 15),
        DetailsButton(
          url: thing.url,
        ),
      ],
    );
  }
}

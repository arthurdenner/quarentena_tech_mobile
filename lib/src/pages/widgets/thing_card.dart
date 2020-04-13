import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/helpers.dart';

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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildImage(thing),
            SizedBox(width: 20),
            Flexible(
              child: Text(thing.title),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(Thing thing) {
    final isSvg = thing.logo.contains('.svg');

    return isSvg
        ? SvgPicture.network(
            getLogoUrl(thing.logo),
            semanticsLabel: thing.logo,
            height: 50,
          )
        : Image.network(
            getLogoUrl(thing.logo),
            semanticLabel: thing.title,
            height: 50,
          );
  }
}

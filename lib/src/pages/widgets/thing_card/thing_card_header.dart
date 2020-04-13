import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/helpers.dart';

class ThingCardHeader extends StatelessWidget {
  const ThingCardHeader({
    Key key,
    @required this.thing,
  }) : super(key: key);

  final Thing thing;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildImage(thing),
        SizedBox(width: 20),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(thing.title),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: thing.categories.map((category) {
                  return Container(
                    color: getColorByCategory(category),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImage(Thing thing) {
    final isSvg = thing.logo.contains('.svg');

    return isSvg
        ? SvgPicture.network(
            getLogoUrl(thing.logo),
            semanticsLabel: thing.logo,
            height: AppSizes.logo,
          )
        : Image.network(
            getLogoUrl(thing.logo),
            semanticLabel: thing.title,
            height: AppSizes.logo,
          );
  }
}

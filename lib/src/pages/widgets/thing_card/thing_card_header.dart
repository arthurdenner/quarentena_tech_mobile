import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_clipper.dart';

class ThingCardHeader extends StatelessWidget {
  const ThingCardHeader({
    Key key,
    @required this.thing,
  }) : super(key: key);

  final Thing thing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                thing.title,
                style: TextStyle(
                  color: AppColors.main,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: thing.categories.map(_buildCategory).toList(),
              ),
            ],
          ),
        ),
        _buildImage(thing),
      ],
    );
  }

  Widget _buildCategory(String category) {
    return ClipPath(
      clipper: const NESClipper(
        radius: AppSizes.border * 2,
      ),
      child: Container(
        color: getColorByCategory(category),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: Text(
          category,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  Widget _buildImage(Thing thing) {
    final isSvg = thing.logo.contains('.svg');

    return ClipOval(
      child: isSvg
          ? SvgPicture.network(
              getLogoUrl(thing.logo),
              semanticsLabel: thing.alt,
              height: AppSizes.logo,
            )
          : Image.network(
              getLogoUrl(thing.logo),
              semanticLabel: thing.alt,
              height: AppSizes.logo,
            ),
    );
  }
}

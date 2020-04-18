import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
        SizedBox(width: 20),
        ClipOval(
          child: Semantics(
            label: thing.alt,
            child: CachedNetworkImage(
              imageUrl: getLogoUrl(thing.logo),
              height: AppSizes.logo,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategory(String category) {
    return ClipPath(
      clipper: const NESClipper(
        radius: AppSizes.border * 2,
      ),
      child: AnimatedContainer(
        duration: defaultDuration,
        color: getColorByCategory(category),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: Text(
          category,
          style: TextStyle(
            color: AppColors.baseLight,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

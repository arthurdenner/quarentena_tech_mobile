import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_clipper.dart';

class NESCard extends StatelessWidget {
  const NESCard({
    Key key,
    @required this.child,
    this.boxShadow,
    this.margin,
    this.radius: AppSizes.border,
  }) : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry margin;
  final List<BoxShadow> boxShadow;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final gambiarra = _buildGambiarraDot(context);
    final cardBg = Theme.of(context).brightness == Brightness.light
        ? Colors.transparent
        : Theme.of(context).cardColor;

    return Stack(
      children: <Widget>[
        Container(
          margin: margin,
          padding: const EdgeInsets.all(AppSizes.border),
          decoration: BoxDecoration(
            boxShadow: boxShadow,
            color: cardBg,
          ),
          child: ClipPath(
            clipper: NESClipper(radius: radius * 2),
            clipBehavior: Clip.hardEdge,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                border: Border.all(
                  color: getBorderColorByBrightness(context),
                  width: AppSizes.border,
                ),
              ),
              child: child,
            ),
          ),
        ),
        Positioned(
          top: radius * 2,
          left: radius * 2,
          child: Container(
            height: radius,
            width: radius,
            color: getBorderColorByBrightness(context),
          ),
        ),
        Positioned(
          top: radius * 2,
          left: radius * 2,
          child: gambiarra,
        ),
        Positioned(
          top: radius * 2,
          right: radius * 2,
          child: gambiarra,
        ),
        Positioned(
          bottom: radius * 2,
          right: radius * 2,
          child: gambiarra,
        ),
        Positioned(
          bottom: radius * 2,
          left: radius * 2,
          child: gambiarra,
        ),
      ],
    );
  }

  Widget _buildGambiarraDot(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      color: getBorderColorByBrightness(context),
    );
  }
}

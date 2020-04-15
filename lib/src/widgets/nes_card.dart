import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_clipper.dart';

class NESCard extends StatelessWidget {
  const NESCard({
    Key key,
    @required this.child,
    this.borderRadius: true,
    this.boxShadow,
    this.margin: EdgeInsets.zero,
    this.radius: AppSizes.border,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets margin;
  final List<BoxShadow> boxShadow;
  final bool borderRadius;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final gambiarra = _buildGambiarraDot(context);

    if (!borderRadius) {
      return _buildContent(context);
    }

    return Stack(
      children: <Widget>[
        _buildContent(context),
        Positioned(
          top: radius * 2 + margin.top,
          left: radius * 2 + margin.left,
          child: gambiarra,
        ),
        Positioned(
          top: radius * 2 + margin.top,
          right: radius * 2 + margin.right,
          child: gambiarra,
        ),
        Positioned(
          bottom: radius * 2 + margin.bottom,
          right: radius * 2 + margin.right,
          child: gambiarra,
        ),
        Positioned(
          bottom: radius * 2 + margin.bottom,
          left: radius * 2 + margin.left,
          child: gambiarra,
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    final cardBg = Theme.of(context).brightness == Brightness.light
        ? Colors.transparent
        : Theme.of(context).cardColor;

    return AnimatedContainer(
      margin: margin,
      padding: EdgeInsets.all(radius),
      duration: defaultDuration,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        color: cardBg,
      ),
      child: ClipPath(
        clipper: NESClipper(radius: borderRadius ? radius * 2 : 0),
        clipBehavior: Clip.hardEdge,
        child: AnimatedContainer(
          duration: defaultDuration,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(
              color: getBorderColorByBrightness(context),
              width: radius,
            ),
          ),
          child: child,
        ),
      ),
    );
  }

  Widget _buildGambiarraDot(BuildContext context) {
    return AnimatedContainer(
      height: radius,
      width: radius,
      color: getBorderColorByBrightness(context),
      duration: defaultDuration,
    );
  }
}

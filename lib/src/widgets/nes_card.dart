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
    this.radius,
  }) : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry margin;
  final List<BoxShadow> boxShadow;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final cardBg = Theme.of(context).brightness == Brightness.light
        ? Colors.transparent
        : Theme.of(context).cardColor;

    return Container(
      margin: margin,
      padding: const EdgeInsets.all(AppSizes.border),
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        color: cardBg,
      ),
      child: ClipPath(
        clipper: NESClipper(radius: radius),
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
    );
  }
}

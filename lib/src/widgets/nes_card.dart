import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';

class NESCard extends StatelessWidget {
  const NESCard({
    Key key,
    @required this.child,
    this.margin,
  }) : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    final cardBg = Theme.of(context).brightness == Brightness.light
        ? Colors.transparent
        : Theme.of(context).cardColor;

    return Container(
      color: cardBg,
      margin: margin,
      padding: const EdgeInsets.all(AppSizes.border),
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
    );
  }
}

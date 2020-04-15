import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_clipper.dart';

class NESButton extends StatelessWidget {
  const NESButton({
    Key key,
    @required this.child,
    @required this.backgroundColor,
    @required this.shadowColor,
  }) : super(key: key);

  final Widget child;
  final Color backgroundColor;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: const NESClipper(),
      clipBehavior: Clip.hardEdge,
      child: AnimatedContainer(
        height: 50,
        duration: defaultDuration,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.baseDark,
            width: AppSizes.border,
          ),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: Offset(0.0, 0.0),
            ),
            BoxShadow(
              color: backgroundColor,
              offset: Offset(-3.0, -3.0),
              spreadRadius: -3.0,
              blurRadius: 0,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}

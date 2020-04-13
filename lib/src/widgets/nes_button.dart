import 'package:flutter/material.dart';

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
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
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
    );
  }
}

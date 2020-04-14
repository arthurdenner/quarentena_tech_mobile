import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';

class NESClipper extends CustomClipper<Path> {
  const NESClipper({
    this.radius,
  });

  final double radius;

  @override
  Path getClip(Size size) {
    final radius = this.radius ?? AppSizes.border;
    final path = Path();
    // TOP RIGHT
    path.lineTo(size.width - radius, 0.0);
    path.lineTo(size.width - radius, radius);
    path.lineTo(size.width, radius);
    // BOTTOM RIGHT
    path.lineTo(size.width, size.height - radius);
    path.lineTo(size.width - radius, size.height - radius);
    path.lineTo(size.width - radius, size.height);
    // BOTTOM LEFT
    path.lineTo(radius, size.height);
    path.lineTo(radius, size.height - radius);
    path.lineTo(0.0, size.height - radius);
    // TOP LEFT
    path.lineTo(0.0, radius);
    path.lineTo(radius, radius);
    path.lineTo(radius, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(NESClipper oldClipper) => false;
}

import 'package:flutter/material.dart';

const BASE_URL = 'https://quarentena.tech';

class AppColors {
  static const background = Color(0xFFeae6da);
  static const emphasis = Color(0xFF7c5e99);
  static const main = Color(0xFFf25a70);
  static const interactive = Color(0xFFf7d51d);
  static const highlight = Color(0xFFe76e55);
}

Map<String, Color> colorMap = {
  'default': Colors.red,
  'comunidade': Color(0xFF209cee),
  'cursos': Color(0xFF92cc41),
  'twitch': Color(0xFF9147ff),
  'youtube': AppColors.highlight,
};

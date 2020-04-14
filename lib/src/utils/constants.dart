import 'package:flutter/material.dart';

const BASE_URL = 'https://quarentena.tech';

class AppSizes {
  static const logo = 80.0;
  static const blur = 3.0;
  static const border = 3.0;
}

class AppColors {
  static const baseLight = Colors.white;
  static const baseDark = Color(0xFF212529);
  //
  static const background = Color(0xFFeae6da);
  static const darkBackground = Color(0xFF3a4042);
  static const emphasis = Color(0xFF7c5e99);
  static const main = Color(0xFFf25a70);
  static const interactive = Color(0xFFf7d51d);
  static const interactiveSplash = Color(0xFFe59400);
  static const highlight = Color(0xFFe76e55);
  static const highlightSplash = Color(0xFF8c2022);
  static const neutral = Colors.black38;
  static const menu = Color.fromARGB(230, 242, 90, 112);
}

class AppLinks {
  static const discord = 'https://bit.ly/discord-collabcode';
  static const github = 'https://github.com/collabcodetech';
  static const twitch = 'https://twitch.tv/collabdode';
  static const twitter = 'https://twitter.com/collabcodetech';
}

const AppCategories = ['cursos', 'twitch', 'youtube', 'comunidade'];

Map<String, Color> colorMap = {
  'default': Colors.red,
  'comunidade': Color(0xFF209cee),
  'cursos': Color(0xFF92cc41),
  'twitch': Color(0xFF9147ff),
  'youtube': AppColors.highlight,
};

Map<String, Color> darkerColorMap = {
  'default': Colors.red,
  'comunidade': Color(0xFF006bb3),
  'cursos': Color(0xFF4aa52e),
  'twitch': Color(0xFF5b1eb6),
  'youtube': AppColors.highlightSplash,
};

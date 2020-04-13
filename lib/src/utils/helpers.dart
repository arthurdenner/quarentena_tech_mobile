import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';

String getLogoUrl(String relativeUrl) => BASE_URL + relativeUrl;

Color getColorByCategory(String category) {
  return colorMap.containsKey(category)
      ? colorMap[category]
      : colorMap['default'];
}

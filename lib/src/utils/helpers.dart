import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

String getLogoUrl(String relativeUrl) => BASE_URL + relativeUrl;

Color getColorByCategory(String category) {
  return colorMap.containsKey(category)
      ? colorMap[category]
      : colorMap['default'];
}

Color getDarkerColorByCategory(String category) {
  return darkerColorMap.containsKey(category)
      ? darkerColorMap[category]
      : darkerColorMap['default'];
}

Color getCheckColorByBrightness(BuildContext context) {
  return Theme.of(context).brightness == Brightness.light
      ? null
      : AppColors.baseDark;
}

Color getBorderColorByBrightness(BuildContext context) {
  return Theme.of(context).brightness == Brightness.light
      ? AppColors.baseDark
      : AppColors.baseLight;
}

Color getTextColorByBrightness(BuildContext context) {
  return getBorderColorByBrightness(context);
}

Future<void> openUrl(String url) async {
  try {
    final isValid = await canLaunch(url);

    if (isValid) {
      launch(url);
    }
  } catch (e) {
    print(e);
  }
}

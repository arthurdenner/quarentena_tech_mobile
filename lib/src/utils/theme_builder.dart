import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';

ThemeData _buildTheme({Brightness brightness}) {
  final isLight = brightness == Brightness.light;

  return ThemeData(
    brightness: brightness,
    fontFamily: 'Press Start 2P',
    dividerColor: AppColors.neutral,
    canvasColor: AppColors.menu,
    primaryColor: isLight ? AppColors.baseLight : AppColors.baseDark,
    cardColor: isLight ? AppColors.baseLight : AppColors.baseDark,
    scaffoldBackgroundColor:
        isLight ? AppColors.background : AppColors.darkBackground,
    toggleableActiveColor: isLight ? AppColors.baseDark : AppColors.baseLight,
    appBarTheme: AppBarTheme(
      color: isLight ? AppColors.background : AppColors.darkBackground,
      iconTheme: IconThemeData(
        color: AppColors.main,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: AppColors.main,
          fontFamily: 'Press Start 2P',
        ),
      ),
    ),
  );
}

final lightTheme = _buildTheme(
  brightness: Brightness.light,
);

final darkTheme = _buildTheme(
  brightness: Brightness.dark,
);

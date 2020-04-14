import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
    ),
  );

  runApp(QuarentenaTech());
}

class QuarentenaTech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeModeHandler(builder: (themeMode) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quarentena Tech',
        themeMode: themeMode,
        theme: ThemeData(
          fontFamily: 'Press Start 2P',
          dividerColor: AppColors.neutral,
          canvasColor: AppColors.menu,
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(
              headline6: TextStyle(
                color: AppColors.main,
                fontFamily: 'Press Start 2P',
              ),
            ),
          ),
        ),
        home: HomePage(),
      );
    });
  }
}

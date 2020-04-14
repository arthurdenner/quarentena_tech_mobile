import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page.dart';
import 'package:quarentena_tech_mobile/src/utils/theme_builder.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';

void main() {
  runApp(QuarentenaTech());
}

class QuarentenaTech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeModeHandler(builder: (themeMode) {
      _configureStatusBar(themeMode);

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quarentena Tech',
        themeMode: themeMode,
        darkTheme: darkTheme,
        theme: lightTheme,
        home: HomePage(),
      );
    });
  }

  void _configureStatusBar(ThemeMode themeMode) {
    final base = themeMode == ThemeMode.dark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;

    SystemChrome.setSystemUIOverlayStyle(
      base.copyWith(
        statusBarColor: Colors.transparent,
      ),
    );
  }
}

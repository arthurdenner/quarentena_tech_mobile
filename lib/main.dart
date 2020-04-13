import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/constants.dart';

void main() {
  runApp(QuarentenaTech());
}

class QuarentenaTech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quarentena Tech',
      theme: ThemeData(
        fontFamily: 'Press Start 2P',
        dividerColor: AppColors.neutral,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: TextStyle(
              color: AppColors.main,
              fontFamily: 'Press Start 2P',
            ),
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: AppColors.interactive,
        ),
      ),
      home: HomePage(),
    );
  }
}

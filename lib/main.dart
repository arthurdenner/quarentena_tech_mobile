import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page.dart';

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
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Color(0xFFf25a70),
              fontFamily: 'Press Start 2P',
            ),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

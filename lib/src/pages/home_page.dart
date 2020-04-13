import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/project_goal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeae6da),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/img/jedi.png'),
        title: Text('#Quarentena.Tech'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProjectGoal(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/about_page/widgets/project_credits.dart';
import 'package:quarentena_tech_mobile/src/pages/about_page/widgets/project_goal.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o projeto'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ProjectGoal(),
              SizedBox(height: 20),
              ProjectCredits(),
            ],
          ),
        ),
      ),
    );
  }
}

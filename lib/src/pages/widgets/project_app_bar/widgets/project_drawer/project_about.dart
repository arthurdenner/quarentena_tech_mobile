import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/about_page.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_button.dart';

class ProjectAbout extends StatelessWidget {
  const ProjectAbout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(20),
        child: NESButton(
          backgroundColor: AppColors.baseLight,
          shadowColor: Color(0xFFadafbc),
          child: FlatButton(
            onPressed: () => _goToAbout(context),
            child: Center(
              child: Text(
                'Sobre o projeto',
                style: TextStyle(
                  color: AppColors.baseDark,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _goToAbout(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AboutPage(),
      ),
    );
  }
}

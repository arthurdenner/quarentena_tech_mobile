import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/constants.dart';

class ProjectGoal extends StatelessWidget {
  const ProjectGoal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Column(
            children: <Widget>[
              Text.rich(
                TextSpan(
                  text:
                      'Nesse momento complicado que estamos passando, felizmente têm muitas'
                      ' pessoas, comunidades e empresas realizando pequenos eventos,',
                  style: TextStyle(
                    height: 1.2,
                  ),
                  children: [
                    TextSpan(
                      text: '100% online',
                      style: TextStyle(
                        color: AppColors.emphasis,
                      ),
                    ),
                    TextSpan(
                      text: ' e de ',
                    ),
                    TextSpan(
                      text: 'graça',
                      style: TextStyle(
                        color: AppColors.emphasis,
                      ),
                    ),
                    TextSpan(
                      text: ' pra galera. A comunidade da ',
                    ),
                    TextSpan(
                      text: 'CollabCode',
                      style: TextStyle(
                        color: AppColors.emphasis,
                      ),
                    ),
                    TextSpan(
                      text: ' criou esse site com o objetivo de juntar todas'
                          'essas iniciativas maravilhosas que estão nos ajudando a'
                          'passar por essa crise de uma forma mais feliz!',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          child: Center(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Objetivo',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

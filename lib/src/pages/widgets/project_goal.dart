import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/animated_heart.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_card.dart';

class ProjectGoal extends StatelessWidget {
  const ProjectGoal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        NESCard(
          margin: EdgeInsets.only(top: 10 - AppSizes.border),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: Column(
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    text:
                        'Nesse momento complicado que estamos passando, felizmente têm muitas'
                        ' pessoas, comunidades e empresas realizando pequenos eventos, ',
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
                          color: AppColors.main,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' criou este aplicativo com o objetivo de juntar todas '
                            'essas iniciativas maravilhosas que estão nos ajudando a '
                            'passar por essa crise de uma forma mais feliz!',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 14),
                AnimatedHeart(),
              ],
            ),
          ),
        ),
        Positioned(
          child: Center(
            child: AnimatedContainer(
              duration: defaultDuration,
              color: Theme.of(context).cardColor,
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

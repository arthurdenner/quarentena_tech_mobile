import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/constants.dart';

class ThingCardFooter extends StatelessWidget {
  const ThingCardFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Compartilhar',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 5),
              Image.asset(
                'assets/img/heart.png',
                height: 20,
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        RaisedButton(
          color: AppColors.highlight,
          onPressed: () {},
          child: Center(
            child: Text(
              'Detalhes',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

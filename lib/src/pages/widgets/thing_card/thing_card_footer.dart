import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/thing_card/share_button.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';

class ThingCardFooter extends StatelessWidget {
  const ThingCardFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ShareButton(),
        SizedBox(height: 10),
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

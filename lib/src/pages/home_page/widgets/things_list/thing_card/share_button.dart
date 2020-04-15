import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_button.dart';
import 'package:share/share.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    Key key,
    @required this.url,
    this.subject,
  }) : super(key: key);

  final String subject;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: NESButton(
        backgroundColor: AppColors.interactive,
        shadowColor: AppColors.interactiveSplash,
        child: FlatButton(
          onPressed: () => Share.share(
            url,
            subject: subject,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Compartilhar',
                style: TextStyle(
                  color: AppColors.baseDark,
                ),
              ),
              SizedBox(width: 5),
              Image.asset(
                'assets/img/heart.png',
                excludeFromSemantics: true,
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_button.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    Key key,
    @required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: NESButton(
        backgroundColor: AppColors.interactive,
        shadowColor: AppColors.interactiveSplash,
        child: FlatButton(
          onPressed: () => shareToFacebook(url),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Compartilhar'),
              SizedBox(width: 5),
              Image.asset(
                'assets/img/heart.png',
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

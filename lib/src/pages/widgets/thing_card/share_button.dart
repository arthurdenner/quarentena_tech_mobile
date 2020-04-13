import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.interactiveSplash,
            offset: Offset(0.0, 0.0),
          ),
          BoxShadow(
            color: AppColors.interactive,
            offset: Offset(-3.0, -3.0),
            spreadRadius: -3.0,
            blurRadius: 0,
          ),
        ],
      ),
      child: FlatButton(
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
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

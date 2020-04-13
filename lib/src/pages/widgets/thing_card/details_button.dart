import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.highlightSplash,
            offset: Offset(0.0, 0.0),
          ),
          BoxShadow(
            color: AppColors.highlight,
            offset: Offset(-3.0, -3.0),
            spreadRadius: -3.0,
            blurRadius: 0,
          ),
        ],
      ),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Center(
          child: Text(
            'Detalhes',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

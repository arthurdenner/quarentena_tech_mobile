import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';

class ErrorAlert extends StatelessWidget {
  const ErrorAlert({
    Key key,
    @required this.message,
    @required this.onClosed,
  }) : super(key: key);

  final String message;
  final VoidCallback onClosed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Houve um erro',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      content: Text(
        message,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: onClosed,
          child: Text(
            'Fechar',
            style: TextStyle(
              color: getTextColorByBrightness(context),
              fontSize: 12,
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_button.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({
    Key key,
    @required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: NESButton(
        shadowColor: AppColors.highlightSplash,
        backgroundColor: AppColors.highlight,
        child: FlatButton(
          padding: EdgeInsets.zero,
          onPressed: () => openUrl(url),
          child: Center(
            child: Text(
              'Detalhes',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

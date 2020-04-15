import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_button.dart';

class ProjectFilter extends StatelessWidget {
  const ProjectFilter({
    Key key,
    @required this.isSelected,
    @required this.backgroundColor,
    @required this.shadowColor,
    @required this.onPressed,
    @required this.category,
  }) : super(key: key);

  final bool isSelected;
  final Color backgroundColor;
  final Color shadowColor;
  final ValueChanged<String> onPressed;
  final String category;

  @override
  Widget build(BuildContext context) {
    final image = isSelected ? 'full' : 'empty';

    return Container(
      height: 80,
      margin: EdgeInsets.all(5),
      child: NESButton(
        backgroundColor: backgroundColor,
        shadowColor: shadowColor,
        child: FlatButton(
          onPressed: () => onPressed(category),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'assets/img/$image-star.png',
                height: 30,
              ),
              SizedBox(height: 10),
              Text(
                category,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.baseLight,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

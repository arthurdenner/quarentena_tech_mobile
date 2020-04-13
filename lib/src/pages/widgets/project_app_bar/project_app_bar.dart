import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';

class ProjectAppBar extends StatefulWidget {
  ProjectAppBar({Key key}) : super(key: key);

  @override
  _ProjectAppBarState createState() => _ProjectAppBarState();
}

class _ProjectAppBarState extends State<ProjectAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: AppSizes.blur,
            spreadRadius: AppSizes.blur / 4,
            offset: Offset(0, AppSizes.blur),
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Image.asset(
                'assets/img/jedi.png',
                height: 60,
              ),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '#Quarentena.',
                      style: TextStyle(
                        color: AppColors.main,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Tech',
                      style: TextStyle(
                        color: AppColors.main,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildMenu(),
        ],
      ),
    );
  }

  Widget _buildMenu() {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/img/heart.png',
          height: 40,
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildMenuLetter('M'),
            _buildMenuLetter('E'),
            _buildMenuLetter('N'),
            _buildMenuLetter('U'),
          ],
        ),
      ],
    );
  }

  Widget _buildMenuLetter(String letter) {
    return Text(
      letter,
      style: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    );
  }
}

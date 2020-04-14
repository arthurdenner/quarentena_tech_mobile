import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_card.dart';

class ProjectAppBar extends StatelessWidget {
  ProjectAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NESCard(
      boxShadow: [
        BoxShadow(
          color: Colors.black45,
          blurRadius: AppSizes.blur,
          spreadRadius: AppSizes.blur / 4,
          offset: Offset(0, AppSizes.blur),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Image.asset(
                    'assets/img/jedi.png',
                    height: 60,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '#Quarentena.',
                      style: TextStyle(
                        color: AppColors.main,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Tech',
                      style: TextStyle(
                        color: AppColors.main,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            _buildMenu(context),
          ],
        ),
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return GestureDetector(
      onTap: () => Scaffold.of(context).openEndDrawer(),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/img/heart.png',
            height: 45,
          ),
          SizedBox(width: 15),
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
      ),
    );
  }

  Widget _buildMenuLetter(String letter) {
    return Text(
      letter,
      style: TextStyle(
        fontSize: 12,
      ),
    );
  }
}

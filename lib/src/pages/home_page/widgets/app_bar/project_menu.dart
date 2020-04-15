import 'package:flutter/material.dart';

class ProjectMenu extends StatelessWidget {
  const ProjectMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => Scaffold.of(context).openEndDrawer(),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/img/heart.png',
            excludeFromSemantics: true,
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

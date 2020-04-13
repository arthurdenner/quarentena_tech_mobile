import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_button.dart';

class ProjectFilters extends StatelessWidget {
  const ProjectFilters({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text('Categorias'),
          SizedBox(height: 20),
          ...AppCategories.map(_buildCategory).toList(),
        ],
      ),
    );
  }

  Widget _buildCategory(String category) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(5),
      child: NESButton(
        backgroundColor: getColorByCategory(category),
        shadowColor: getDarkerColorByCategory(category),
        child: FlatButton(
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'assets/img/empty-star.png',
                height: 30,
              ),
              SizedBox(height: 10),
              Text(
                category,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
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

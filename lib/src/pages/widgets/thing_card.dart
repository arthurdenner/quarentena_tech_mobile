import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/helpers.dart';

class ThingCard extends StatelessWidget {
  const ThingCard({
    Key key,
    @required this.thing,
  }) : super(key: key);

  final Thing thing;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Divider(
              color: Colors.black38,
              height: 30,
            ),
            _buildBody(thing),
            Divider(
              color: Colors.black38,
              height: 30,
            ),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildImage(thing),
        SizedBox(width: 20),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(thing.title),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: thing.categories.map((category) {
                  return Container(
                    color: getColorByCategory(category),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBody(Thing thing) {
    return Column(
      children: <Widget>[
        Text(
          thing.content,
          style: TextStyle(
            height: 1.2,
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RaisedButton(
          color: AppColors.interactive,
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
                height: 20,
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        RaisedButton(
          color: AppColors.highlight,
          onPressed: () {},
          child: Center(
            child: Text(
              'Detalhes',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildImage(Thing thing) {
    final isSvg = thing.logo.contains('.svg');

    return isSvg
        ? SvgPicture.network(
            getLogoUrl(thing.logo),
            semanticsLabel: thing.logo,
            height: 50,
          )
        : Image.network(
            getLogoUrl(thing.logo),
            semanticLabel: thing.title,
            height: 50,
          );
  }
}

import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_card.dart';

class ProjectCredits extends StatelessWidget {
  const ProjectCredits({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NESCard(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Criado pela comunidade',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () => openUrl(AppLinks.discord),
              child: Text(
                'CollabCode',
                style: TextStyle(
                  color: AppColors.main,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildLink('twitch', AppLinks.twitch),
                SizedBox(width: 20),
                _buildLink('discord', AppLinks.discord),
                SizedBox(width: 20),
                _buildLink('twitter', AppLinks.twitter),
                SizedBox(width: 20),
                _buildLink('github', AppLinks.github),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildLink(String name, String url) {
    return GestureDetector(
      onTap: () => openUrl(url),
      child: Image.asset(
        'assets/img/$name.png',
        semanticLabel: 'Link para $name',
        height: 50,
      ),
    );
  }
}

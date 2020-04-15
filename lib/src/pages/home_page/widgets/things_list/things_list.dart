import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page/widgets/things_list/thing_card/thing_card.dart';

class ThingsList extends StatelessWidget {
  const ThingsList({
    Key key,
    @required this.status,
    @required this.things,
  }) : super(key: key);

  final String status;
  final List<Thing> things;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: <Widget>[
          if (status == 'pending') _buildLoader(),
          if (status == 'rejected') _buildError(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: things.length,
            itemBuilder: (_, index) => ThingCard(thing: things[index]),
            physics: BouncingScrollPhysics(),
          ),
        ],
      ),
    );
  }

  Padding _buildLoader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Text(
        'Carregando itens...',
        textAlign: TextAlign.center,
        style: TextStyle(
          height: 1.2,
        ),
      ),
    );
  }

  Widget _buildError() {
    final message = things.length > 0 ? 'atualizar' : 'obter';

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Text(
        'Não foi possível $message os itens',
        textAlign: TextAlign.center,
        style: TextStyle(
          height: 1.2,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/project_goal.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/things_list.dart';
import 'package:quarentena_tech_mobile/src/services/api.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _api = Api();
  String _status = 'idle';
  List<Thing> _things = [];

  @override
  void initState() {
    super.initState();
    _getItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      endDrawer: Text('???'),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/img/jedi.png'),
        title: Text('#Quarentena.Tech'),
        actions: _buildMenu(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProjectGoal(),
                SizedBox(height: 30),
                ThingsList(
                  status: _status,
                  things: _things,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildMenu() {
    return [
      Row(
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
      ),
    ];
  }

  Text _buildMenuLetter(String letter) {
    return Text(
      letter,
      style: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    );
  }

  Future<void> _getItems() async {
    try {
      setState(() => _status = 'pending');
      final response = await _api.getThings();

      setState(() {
        _status = 'resolved';
        _things = response;
      });
    } catch (e) {
      setState(() {
        _status = 'rejected';
      });
      // TODO: Improve error handling
      print(e);
    }
  }
}

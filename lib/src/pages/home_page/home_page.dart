import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page/widgets/app_bar/project_app_bar.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page/widgets/app_bar/project_drawer/project_drawer.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page/widgets/things_list/things_list.dart';
import 'package:quarentena_tech_mobile/src/services/api.dart';
import 'package:quarentena_tech_mobile/src/services/storage.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _activeFilters = <String>[];
  final _api = Api();
  String _status = 'idle';
  List<Thing> _things = [];

  @override
  void initState() {
    super.initState();
    _getThingsFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProjectDrawer(
        activeFilters: _activeFilters,
        onChangedFilter: _handleFilters,
        onChanged: _setTheme,
        value: ThemeModeHandler.of(context).themeMode == ThemeMode.dark,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ProjectAppBar(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ThingsList(
                  status: _status,
                  things: _filterThings(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _getThingsFromApi() async {
    try {
      final stored = await getStorageThings();

      setState(() {
        _status = 'pending';
        _things = stored;
      });

      final response = await Future.wait<List<Thing>>([
        _api.getThings(),
        Future.delayed(Duration(milliseconds: 1500)),
      ]);

      setState(() {
        _status = 'resolved';
        _things = response.first;
      });
    } catch (e) {
      setState(() {
        _status = 'rejected';
      });
      // TODO: Improve error handling
      print(e);
    }
  }

  List<Thing> _filterThings() {
    if (_activeFilters.isEmpty) {
      return _things;
    }

    return _things.where((thing) {
      return thing.categories.any((category) {
        return _activeFilters.contains(category);
      });
    }).toList();
  }

  void _handleFilters(String filter) {
    setState(() {
      if (_activeFilters.contains(filter)) {
        _activeFilters.remove(filter);
      } else {
        _activeFilters.add(filter);
      }
    });
  }

  void _setTheme(bool value) {
    ThemeModeHandler.of(context).setThemeMode(
      value ? ThemeMode.dark : ThemeMode.light,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/project_app_bar/widgets/project_drawer/project_filters.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';

class ProjectDrawer extends StatelessWidget {
  const ProjectDrawer({
    Key key,
    @required this.activeFilters,
    @required this.onChangedFilter,
    @required this.onChanged,
    @required this.value,
  }) : super(key: key);

  final List<String> activeFilters;
  final ValueChanged<String> onChangedFilter;
  final ValueChanged<bool> onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            _buildThemeAndClose(context),
            SizedBox(height: 20),
            ProjectFilters(
              activeFilters: activeFilters,
              onChangedFilter: onChangedFilter,
            ),
          ],
        ),
      ),
    );
  }

  Row _buildThemeAndClose(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: CheckboxListTile(
            dense: true,
            title: Text('Dark'),
            value: value,
            onChanged: onChanged,
            controlAffinity: ListTileControlAffinity.leading,
            checkColor: getCheckColorByBrightness(context),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
            child: Image.asset(
              'assets/img/close.png',
              height: 40,
            ),
          ),
        ),
      ],
    );
  }
}

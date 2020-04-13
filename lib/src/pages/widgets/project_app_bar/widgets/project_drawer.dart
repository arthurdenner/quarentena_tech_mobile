import 'package:flutter/material.dart';

class ProjectDrawer extends StatelessWidget {
  const ProjectDrawer({
    Key key,
    @required this.onChanged,
    @required this.value,
  }) : super(key: key);

  final ValueChanged<bool> onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
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
                    activeColor: Colors.black87,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Image.asset(
                      'assets/img/close.png',
                      height: 40,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

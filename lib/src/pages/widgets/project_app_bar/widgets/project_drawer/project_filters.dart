import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/project_app_bar/widgets/project_drawer/project_filter.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';

class ProjectFilters extends StatelessWidget {
  const ProjectFilters({
    Key key,
    @required this.activeFilters,
    @required this.onChangedFilter,
  }) : super(key: key);

  final List<String> activeFilters;
  final ValueChanged<String> onChangedFilter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            'Categorias',
            style: TextStyle(
              color: AppColors.baseDark,
            ),
          ),
          SizedBox(height: 20),
          ...AppCategories.map(_buildCategory).toList(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildCategory(String category) {
    return ProjectFilter(
      backgroundColor: getColorByCategory(category),
      shadowColor: getDarkerColorByCategory(category),
      onPressed: onChangedFilter,
      isSelected: activeFilters.contains(category),
      category: category,
    );
  }
}

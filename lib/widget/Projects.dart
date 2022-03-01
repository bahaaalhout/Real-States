// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:web_test/Models/Project_Data.dart';
import 'package:web_test/widget/projectCard.dart';

import '../responsive.dart';

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Our Project',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Responsive(
          desktop: buildGridView(
            demoProjects.length,
            3,
            0.75,
            (context, index) => projectCard(project: demoProjects[index]),
          ),
          tablet: buildGridView(
            demoProjects.length,
            MediaQuery.of(context).size.width < 900 ? 2 : 3,
            0.75,
            (context, index) => projectCard(project: demoProjects[index]),
          ),
          mobileLarge: buildGridView(
            demoProjects.length,
            2,
            0.75,
            (context, index) => projectCard(project: demoProjects[index]),
          ),
          mobile: buildGridView(
            demoProjects.length,
            1,
            0.75,
            (context, index) => projectCard(project: demoProjects[index]),
          ),
        )
      ],
    );
  }

  GridView buildGridView(
    int itemCount,
    int crossAxsitCount,
    double childAspectRatio,
    IndexedWidgetBuilder itemBuilder,
  ) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: childAspectRatio,
        crossAxisCount: crossAxsitCount,
      ),
      itemBuilder: itemBuilder,
    );
  }
}

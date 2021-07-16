import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yasinsevencom/models/projects.dart';
import 'package:yasinsevencom/pages/projects/projects_card_mobile.dart';
import 'package:yasinsevencom/pages/projects/projects_desktop.dart';
import 'package:yasinsevencom/pages/projects/projects_mobile.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: ProjectsMobile(),
        desktop: ProjectsDesktop(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
//import 'package:yasinsevencom/langs/locale_keys.g.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('projects.main'.tr()),
      ),
    );
  }
}

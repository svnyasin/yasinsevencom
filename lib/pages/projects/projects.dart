import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yasinsevencom/models/projects.dart';
import 'package:yasinsevencom/pages/projects/projects_card_mobile.dart';
import 'package:yasinsevencom/pages/projects/projects_desktop.dart';
import 'package:yasinsevencom/pages/projects/projects_mobile.dart';

import 'package:easy_localization/easy_localization.dart';

import '../../main.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark ? Colors.black : Colors.white,
        titleSpacing: 0,
        title: Text(
          'yasinseven.com',
          style: TextStyle(
              color: isDark ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: isDark
              ? Image.asset(
                  'icons/favicon.png',
                )
              : Image.asset(
                  'icons/favicon-black.png',
                ),
        ),
        actions: <Widget>[
          IconButton(
            icon: isTR
                ? Image.asset(
                    'icons/tr-flag.png',
                    height: 20,
                    width: 20,
                  )
                : Image.asset(
                    'icons/uk-flag.png',
                    height: 20,
                    width: 20,
                  ),
            onPressed: () {
              if (context.locale.toString() == "tr") {
                context.setLocale(Locale("en"));
                isTR = false;
                Future.delayed(const Duration(milliseconds: 100), () {
                  setState(() {});
                });
              } else {
                context.setLocale(Locale("tr"));
                isTR = true;
                Future.delayed(const Duration(milliseconds: 100), () {
                  setState(() {});
                });
              }
            },
          ),
          IconButton(
            icon: Icon(
              Icons.brightness_6,
              color: isDark ? Colors.white : Colors.black,
            ),
            onPressed: () {
              setState(() {
                isDark = !isDark;
              });
            },
          ),
        ],
      ),
      body: ScreenTypeLayout(
        mobile: ProjectsMobile(),
        desktop: ProjectsDesktop(),
      ),
    );
  }
}

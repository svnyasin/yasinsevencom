import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yasinsevencom/constants.dart';

import 'package:yasinsevencom/models/projects.dart';
import 'package:yasinsevencom/pages/projects/projects_card_desktop.dart';

import 'dart:html' as html;

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Projelerim",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
                  children: List.generate(
                    projects.length,
                    (index) => ProjectsCardDesktop(
                      press: () {
                        html.window.open(projects[index].url!, 'project_url');
                      },
                      index: index,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

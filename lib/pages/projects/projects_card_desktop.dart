import 'package:flutter/material.dart';
import 'package:yasinsevencom/main.dart';
import 'package:yasinsevencom/models/projects.dart';
import 'dart:html' as html;

import '../../../../constants.dart';

class ProjectsCardDesktop extends StatefulWidget {
  // just press "Command + ."
  const ProjectsCardDesktop({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  final int? index;
  final Function()? press;

  @override
  _ProjectsCardDesktopState createState() => _ProjectsCardDesktopState();
}

class _ProjectsCardDesktopState extends State<ProjectsCardDesktop> {
  bool isHover = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: isDark ? Colors.grey[900] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(
              projects[widget.index!].image!,
              height: 320,
              width: 255,
              fit: BoxFit.fitHeight,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      projects[widget.index!].title!.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    SingleChildScrollView(
                      child: Text(projects[widget.index!].description!,
                          style: TextStyle(fontSize: 16)),
                    ),
                    SizedBox(height: kDefaultPadding),
                    TextButton(
                        onPressed: () => html.window
                            .open(projects[widget.index!].url!, 'project_url'),
                        child: Text(
                          "View More..",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

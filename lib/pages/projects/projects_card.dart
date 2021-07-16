import 'package:flutter/material.dart';
import 'package:yasinsevencom/main.dart';
import 'package:yasinsevencom/models/projects.dart';
import 'dart:html' as html;

import '../../../../constants.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  final int? index;
  final Function()? press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
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
              recentWorks[widget.index!].image!,
              height: 320,
              width: 255,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      recentWorks[widget.index!].title!.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    SingleChildScrollView(
                      child: Text(recentWorks[widget.index!].description!,
                          style: TextStyle(fontSize: 16)),
                    ),
                    SizedBox(height: kDefaultPadding),
                    TextButton(
                        onPressed: () => html.window.open(
                            recentWorks[widget.index!].url!, 'project_url'),
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

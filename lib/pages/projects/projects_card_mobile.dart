import 'package:flutter/material.dart';
import 'package:yasinsevencom/main.dart';
import 'package:yasinsevencom/models/projects.dart';
import 'dart:html' as html;

import '../../../../constants.dart';

class RecentWorkCardMobile extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCardMobile({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  final int? index;
  final Function()? press;

  @override
  _RecentWorkCardMobileState createState() => _RecentWorkCardMobileState();
}

class _RecentWorkCardMobileState extends State<RecentWorkCardMobile> {
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
        height: 550,
        width: 540,
        decoration: BoxDecoration(
          color: isDark ? Colors.grey[900] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                recentWorks[widget.index!].image!,
                height: 250,
                width: 320,
              ),
              Text(
                recentWorks[widget.index!].title!.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(height: 1.5),
              ),
              Text(recentWorks[widget.index!].description!,
                  style: TextStyle(fontSize: 16)),
              TextButton(
                onPressed: () => html.window
                    .open(recentWorks[widget.index!].url!, 'project_url'),
                child: Text(
                  "View More..",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

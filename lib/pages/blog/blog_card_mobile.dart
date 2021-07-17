import 'package:flutter/material.dart';
import 'package:yasinsevencom/main.dart';
import 'package:yasinsevencom/models/blog.dart';
import 'dart:html' as html;

import '../../../../constants.dart';
import 'blog_content_page.dart';

class BlogCardMobile extends StatefulWidget {
  // just press "Command + ."
  const BlogCardMobile({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  final int? index;
  final Function()? press;

  @override
  _BlogCardMobileState createState() => _BlogCardMobileState();
}

class _BlogCardMobileState extends State<BlogCardMobile> {
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                blogContents[widget.index!].image!,
                height: 250,
                width: 320,
              ),
              Text(
                blogContents[widget.index!].title!.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(height: 1.5),
              ),
              Text(blogContents[widget.index!].description!,
                  style: TextStyle(fontSize: 16)),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlogContentPage(
                        index: widget.index,
                      ),
                    ),
                  );
                },
                child: Text(
                  "Read More..",
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

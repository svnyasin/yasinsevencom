import 'package:flutter/material.dart';
import 'package:yasinsevencom/main.dart';
import 'package:yasinsevencom/models/blog.dart';
import 'dart:html' as html;

import '../../../../constants.dart';
import 'blog_content_page.dart';

class BlogCardDesktop extends StatefulWidget {
  // just press "Command + ."
  const BlogCardDesktop({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  final int? index;
  final Function()? press;

  @override
  _BlogCardDesktopState createState() => _BlogCardDesktopState();
}

class _BlogCardDesktopState extends State<BlogCardDesktop> {
  bool isHover = false;
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
          color: isDark ? Colors.grey[900] : Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(
              blogContents[widget.index!].image!,
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
                      blogContents[widget.index!].title!.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    SingleChildScrollView(
                      child: Text(blogContents[widget.index!].description!,
                          style: TextStyle(fontSize: 16)),
                    ),
                    SizedBox(height: kDefaultPadding),
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

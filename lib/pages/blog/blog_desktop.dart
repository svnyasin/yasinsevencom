import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yasinsevencom/constants.dart';

import 'package:yasinsevencom/models/blog.dart';
import 'package:yasinsevencom/pages/blog/blog_content_page.dart';

import 'blog_card_desktop.dart';

class BlogDesktop extends StatelessWidget {
  const BlogDesktop({Key? key}) : super(key: key);

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
                "Blog",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
                  children: List.generate(
                    blogContents.length,
                    (index) => BlogCardDesktop(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlogContentPage(
                              index: index,
                            ),
                          ),
                        );
                      },
                      index: index,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

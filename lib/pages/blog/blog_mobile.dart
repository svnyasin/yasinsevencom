import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yasinsevencom/constants.dart';
import 'package:yasinsevencom/models/blog.dart';

import 'blog_card_mobile.dart';

class BlogMobile extends StatelessWidget {
  const BlogMobile({Key? key}) : super(key: key);

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
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
                  children: List.generate(
                    blogContents.length,
                    (index) => BlogCardMobile(
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

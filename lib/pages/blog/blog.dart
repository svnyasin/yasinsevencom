import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yasinsevencom/main.dart';

import 'package:easy_localization/easy_localization.dart';

import 'blog_desktop.dart';
import 'blog_mobile.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
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
        mobile: BlogMobile(),
        desktop: BlogDesktop(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yasinsevencom/main.dart';
import 'package:yasinsevencom/models/blog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:yasinsevencom/pages/blog/blog.dart';
import 'package:yasinsevencom/pages/blog/blog_content_desktop.dart';
import 'package:yasinsevencom/pages/blog/blog_content_mobile.dart';

class BlogContentPage extends StatefulWidget {
  const BlogContentPage({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  _BlogContentPageState createState() => _BlogContentPageState();
}

class _BlogContentPageState extends State<BlogContentPage> {
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
          onPressed: () {
            Navigator.pop(context);
          },
          icon: (Icon(
            Icons.arrow_back_ios,
            color: isDark ? Colors.white : Colors.black,
          )),
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
        mobile: BlogContentMobile(
          index: widget.index,
        ),
        desktop: BlogContentDesktop(
          index: widget.index,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:yasinsevencom/constants.dart';
import 'dart:html' as html;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yasinsevencom/main.dart';
import 'package:yasinsevencom/pages/aboutme/aboutme_desktop.dart';
import 'package:yasinsevencom/pages/aboutme/aboutme_mobile.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
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
        mobile: AboutMeMobile(),
        desktop: AboutMeDesktop(),
      ),
    );
  }
}

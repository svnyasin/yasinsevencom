import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:yasinsevencom/constants.dart';
import 'dart:html' as html;
import 'package:responsive_builder/responsive_builder.dart';
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
      body: ScreenTypeLayout(
        mobile: AboutMeMobile(),
        desktop: AboutMeDesktop(),
      ),
    );
  }
}

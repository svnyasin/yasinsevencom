import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
//import 'package:yasinsevencom/langs/locale_keys.g.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('aboutme.main'.tr()),
      ),
    );
  }
}

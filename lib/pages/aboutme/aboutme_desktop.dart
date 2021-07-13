import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:yasinsevencom/constants.dart';
import 'dart:html' as html;

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 125,
            backgroundImage: Image.asset(
              "images/pp.jpg",
            ).image,
            backgroundColor: Colors.black,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "aboutme.head-main".tr(),
            textScaleFactor: 3,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            constraints: BoxConstraints(),
            margin: EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              'aboutme.main'.tr(),
              style: Theme.of(context).textTheme.caption,
              textScaleFactor: 2,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset("icons/github.png")),
                label: Text('Github'),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_GITHUB, 'github'),
              ),
              FlatButton.icon(
                icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset("icons/instagram.png")),
                label: Text('Instagram'),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_INSTAGRAM, 'instagram'),
              ),
              FlatButton.icon(
                icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset("icons/linkedin.png")),
                label: Text('Linkedin'),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_LINKEDIN, 'linkedin'),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

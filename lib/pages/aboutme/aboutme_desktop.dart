import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:yasinsevencom/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:html' as html;

import 'package:yasinsevencom/main.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height - 112),
              width: (MediaQuery.of(context).size.width),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/site_background_desktop.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Container(
                    //color: Colors.blue,
                    height: 100,
                    width: (MediaQuery.of(context).size.width * 0.7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          //alignment:new Alignment(x, y)
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              height: 30,
                              width: 30,
                            ),
                            Text(
                              "  " + "aboutme.head-main".tr(),
                              textScaleFactor: 2,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'Öğrenci',
                              textStyle: const TextStyle(
                                fontSize: 45.0,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 200),
                              curve: Curves.bounceInOut,
                              cursor: '|',
                            ),
                            TypewriterAnimatedText(
                              'Yazılım Uzmanı',
                              textStyle: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 200),
                              curve: Curves.bounceInOut,
                              cursor: '|',
                            ),
                          ],
                          pause: const Duration(milliseconds: 500),
                          repeatForever: true,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Kaydır",
                          textScaleFactor: 1.5,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_downward),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: (MediaQuery.of(context).size.width * 0.6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    //alignment:new Alignment(x, y)
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                        height: 30,
                        width: 30,
                      ),
                      Text(
                        " Hakkımda",
                        textScaleFactor: 2,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "  " + "aboutme.head-main".tr(),
                    textScaleFactor: 1.5,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "aboutme.main".tr(),
                    textScaleFactor: 1.3,
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
                            html.window.open(PROFILE_GITHUB, 'github'),
                      ),
                      FlatButton.icon(
                        icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset("icons/instagram.png")),
                        label: Text('Instagram'),
                        onPressed: () =>
                            html.window.open(PROFILE_INSTAGRAM, 'instagram'),
                      ),
                      FlatButton.icon(
                        icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset("icons/linkedin.png")),
                        label: Text('Linkedin'),
                        onPressed: () =>
                            html.window.open(PROFILE_LINKEDIN, 'linkedin'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width * 0.7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Flutter", textScaleFactor: 1.2),
                            Text(
                              "Lorem ipsum dolor sit amet falan filan",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width * 0.7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Flutter", textScaleFactor: 1.2),
                            Text(
                              "Lorem ipsum dolor sit amet falan filan",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width * 0.7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Flutter", textScaleFactor: 1.2),
                            Text(
                              "Lorem ipsum dolor sit amet falan filan",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width * 0.7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Flutter", textScaleFactor: 1.2),
                            Text(
                              "Lorem ipsum dolor sit amet falan filan",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width * 0.7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Flutter", textScaleFactor: 1.2),
                            Text(
                              "Lorem ipsum dolor sit amet falan filan",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
*/
/* 

SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 100,
            backgroundImage: Image.asset(
              "images/pp.jpg",
            ).image,
            backgroundColor: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "aboutme.head-main".tr(),
            textScaleFactor: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 1000),
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'aboutme.main'.tr(),
              style: Theme.of(context).textTheme.caption,
              textScaleFactor: 1.5,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
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

*/

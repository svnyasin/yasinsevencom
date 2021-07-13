// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "aboutme": {
    "navbar": "About Me",
    "head-main": "Hi! I'm Yasin Seven",
    "main": "I've always been fascinated by computers and electronic devices, and I've always wondered what's going on in the background and how they work. That's why I'm trying to advance my career in the world of informatics. I am dealing with cyber security, coding and developing mobile applications with flutter."
  },
  "blog": {
    "navbar": "Blog",
    "main": "Blog page is under construction.."
  },
  "projects": {
    "navbar": "Projects",
    "main": "Projects page is under construction.."
  }
};
static const Map<String,dynamic> tr = {
  "aboutme": {
    "navbar": "Hakkımda",
    "head-main": "Selam! Ben Yasin Seven",
    "main": "Kendimi bildim bileli bilgisayarlar ve elektronik aletlere hep bir hayranlık duyar arka planda neler olduğunu ve nasıl çalıştıklarını merak ederim. Bu nedenle kariyerimi bilişim dünyasında ilerletmeye karar verdim. Siber güvenlik, yazılım ile ilgileniyor ve flutter ile mobil uygulamalar geliştiriyorum."
  },
  "blog": {
    "navbar": "Blog",
    "main": "Blog sayfası yapım aşamasında.."
  },
  "projects": {
    "navbar": "Projelerim",
    "main": "Projelerim sayfası yapım aşamasında.."
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "tr": tr};
}

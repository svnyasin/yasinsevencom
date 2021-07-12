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
    "main": "About me page is under construction.."
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
    "main": "Hakkımda sayfası yapım aşamasında.."
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

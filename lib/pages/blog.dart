import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
//import 'package:yasinsevencom/langs/locale_keys.g.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('blog.main'.tr()),
      ),
    );
  }
}

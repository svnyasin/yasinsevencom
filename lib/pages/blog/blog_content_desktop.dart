import 'package:flutter/material.dart';
import 'package:yasinsevencom/models/blog.dart';

class BlogContentDesktop extends StatelessWidget {
  const BlogContentDesktop({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            blogContents[index!].title!,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: (MediaQuery.of(context).size.width * 0.9),
            height: 200,
            child: Image.asset(
              blogContents[index!].image!,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: Text(
              blogContents[index!].content!,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

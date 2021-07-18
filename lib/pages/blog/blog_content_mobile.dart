import 'package:flutter/material.dart';
import 'package:yasinsevencom/models/blog.dart';

class BlogContentMobile extends StatelessWidget {
  const BlogContentMobile({
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
            padding: EdgeInsets.all(30),
            child: Text(
              blogContents[index!].content!,
            ),
          ),
        ],
      ),
    );
  }
}

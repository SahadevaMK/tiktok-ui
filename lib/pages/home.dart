import 'package:flutter/material.dart';

import '../posts/post1.dart';
import '../posts/posts2.dart';
import '../posts/posts3.dart';

class HomeScreen extends StatelessWidget {
  final _Controller = PageController(initialPage: 0);
   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}

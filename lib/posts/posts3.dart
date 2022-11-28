import 'package:flutter/material.dart';

import '../util/post_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      name: 'NakulaGowda',
      description: 'tiktok ui page ',
      hashtag: '#coder #web developer',
      likes: '1.7M',
      comments: '6256',
      shares: '2568',
      userPost: Container(
        color: Colors.pinkAccent,
        child: Center(
          child: Image(
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('images/amoung.gif'),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tiktok_ui/util/button.dart';
import 'package:tiktok_ui/util/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      name: 'CreatedbySAHADEVA',
      description: 'tiktok ui page ',
      hashtag: '#coder #app developer',
      likes: '1.2M',
      comments: '1256',
      shares: '258',
      userPost: Container(
        color: Colors.pinkAccent,
        child: Center(
          child: Image(
            image: AssetImage('images/cat.gif'),
          ),
        ),
      ),
    );
  }
}

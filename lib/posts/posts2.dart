import 'package:flutter/material.dart';

import '../util/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      name: 'ChandanSgowda',
      description: 'tiktok ui page ',
      hashtag: '#coder #app developer',
      likes: '15.2M',
      comments: '5226',
      shares: '2585',
      userPost: Container(
        color: Colors.pinkAccent,
       child: Center(
         child: Image(
           image: AssetImage('images/among-us.gif'),
         ),
       ),
      ),
    );
  }
}

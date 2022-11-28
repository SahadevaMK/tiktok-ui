import 'package:flutter/material.dart';

import 'button.dart';

class PostTemplate extends StatelessWidget {
  final String name;
  final String description;
  final String hashtag;
  final String likes;
  final String comments;
  final String shares;
  final userPost;

   PostTemplate({Key? key, required this.name, required this.comments, required this.hashtag, required this.description, required this.likes, required this.shares, this.userPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userPost,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1,1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('@$name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                  SizedBox(height: 10,),
                  RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: description),
                        TextSpan(text: hashtag,style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1,1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    icon:  Icon(Icons.favorite),
                    number: likes,
                  ),
                  MyButton(
                    icon:  Icon(Icons.chat_bubble_rounded),
                    number: comments,
                  ),
                  MyButton(
                    icon:  Icon(Icons.favorite),
                    number: shares,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

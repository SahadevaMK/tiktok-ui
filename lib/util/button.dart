import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final icon;
  final String number;
   MyButton({Key? key, this.icon, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child: Column(
        children: [
          icon,
          SizedBox(height: 10,),
          Text(number),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  String title;
  String img;

   CustomAvatar(this.title,this.img,{Key? key}) : super(key: key);

  @override
 Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(img),
        ),
        Text(title,overflow: TextOverflow.ellipsis, ),

      ],

    );
  }
}

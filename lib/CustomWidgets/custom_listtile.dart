import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage("images/2.png"),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("BuinessName", style: TextStyle(
               fontWeight: FontWeight.w700),),
          Icon(Icons.more_horiz, )

        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("post description here", ),
          Text("Date & Time", style: TextStyle(fontSize: 10),)

        ],
      ),


    );

  }
}

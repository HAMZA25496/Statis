import 'package:flutter/material.dart';

class TrendingContainer extends StatelessWidget {
  Color color;
   TrendingContainer(this.color,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      child: Container(
        height: 47,
        width: MediaQuery.of(context).size.width * 0.43,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xFFD5D5D5)
        ),
        child: Row(
          children: [


            Container(
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(6),bottomLeft:Radius.circular(6)),
                color: color,
              ),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Text("What is the best option for game...?",
                    style: TextStyle(fontSize: 9,fontWeight: FontWeight.w700,color: Colors.black),),


                  Row(
                    children: [
                      Container(
                          height: 0.5,
                          width: 153,
                          color: Colors.black,
                        ),
                    ],
                  ),

                  Text("20,000 participants",
                    style: TextStyle(fontSize: 9,fontWeight: FontWeight.w700,color: Colors.black),),

                ],
              ),
            )
          ],

        ),
      ),
    );

  }
}

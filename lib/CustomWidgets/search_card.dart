import 'package:flutter/material.dart';
class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                Container(
      color: Colors.transparent,
      child: Card(
          elevation: 3,
          color: Colors.black,
          // color: Constants.lightThemeColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child:  Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextField(
              style: TextStyle(color: Colors.white,fontSize: 17),
              decoration: InputDecoration(

                icon: Icon(Icons.search,color: Colors.white,),
                hintText:"Search",
                hintStyle: TextStyle(color: Colors.white,fontSize: 17,),

                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                suffixIcon: Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          )),
    );

  }
}

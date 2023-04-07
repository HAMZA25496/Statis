import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
 final  String? title;
 final double? fontSize;
 final double? borderRadius;
 final double? height;
 final double? width;
 final Color? bColor;
 final Color? textColor;


const  CustomButton(
      { this.title,
       this.fontSize,
       this.borderRadius,
       this.width,
       this.height,
         this.bColor,
         this.textColor,

      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      child: Container(
         height: height,
        width: width,
        decoration: BoxDecoration(
          color: bColor,
          borderRadius: BorderRadius.circular(borderRadius!)
        ),
        child: Center(child: Text(title!,style: TextStyle(fontSize: fontSize,color: textColor),)),
      )
    );
  }
}

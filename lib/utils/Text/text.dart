import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  String title;
  double? fontSize;
  Color? color;
  FontWeight? fontWeight;
  TextAlign? textAlign;



   CustomText({Key? key , required this.title,required this.color,required this.fontWeight, required this.fontSize,this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text( textAlign:textAlign, title,style: TextStyle(fontSize:fontSize ,color:color,fontWeight: fontWeight,),);
  }
}

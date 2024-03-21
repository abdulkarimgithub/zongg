import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zongapp/utils/Text/text.dart';


class CustomContainer extends StatelessWidget {
  Color color1;
  String title;
  String title1;
   CustomContainer({Key? key , required this.color1, required this.title,required this.title1 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.h,
      width: 140.w,
      decoration: BoxDecoration(color:color1,borderRadius: BorderRadius.circular(15),


      ),
      child: Padding(
        padding: const EdgeInsets.only(top:10,left: 20 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.folder,color: Colors.pink,),
            SizedBox(height: 40.h,),
            CustomText(title:title, color: Color(0xff162A43), fontWeight: FontWeight.w500, fontSize: 14.sp),
            CustomText(title: title1, color: Color(0xffA7B5BF), fontWeight: FontWeight.w500, fontSize: 12.sp),
          ],
        ),
      ),

    );
  }
}

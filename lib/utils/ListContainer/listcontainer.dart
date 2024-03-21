import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zongapp/utils/Boxsize/boxsize.dart';
import 'package:zongapp/utils/color/colors.dart';


class ListContainer extends StatelessWidget {
  String title;

  String image;
  String time;



   ListContainer({Key? key,    required this.title, required this.image,required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      // height: 80.h,
      width: 378.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Appcolor.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  child: Container(
                    height: 50.w,
                    width: 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff80BD36),
                      image:  DecorationImage(
                          image: AssetImage(
                              image)),
                    ),
                  ),
                ),
              ),
              CustomSizebox(
                width: 23.w,
              ),
              Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffA7B5BF)),
                  ),
                ],
              ),
            ],
          ),

        ],
      ));}
}

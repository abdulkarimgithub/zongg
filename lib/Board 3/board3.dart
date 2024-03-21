import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zongapp/Board%204/board4.dart';

import 'package:zongapp/utils/Boxsize/boxsize.dart';
import 'package:zongapp/utils/Text/text.dart';
import 'package:zongapp/utils/color/colors.dart';


class BoardThree extends StatefulWidget {
  const BoardThree({Key? key}) : super(key: key);

  @override
  State<BoardThree> createState() => _BoardThreeState();
}

class _BoardThreeState extends State<BoardThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13, right: 28, top: 60),
            child: Container(
              height: 387.h,
              width: 387.w,
              child: Image(image: AssetImage("assets/images/image 8.png")),
            ),
          ),
          CustomSizebox(height: 60.h),
          Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text.rich((TextSpan(
                  text: "Ready",
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: Appcolor.green,
                  ),
                  children: [
                    TextSpan(
                        text: " Made \nDeployments",
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                            color: Appcolor.black))
                  ])))),
          CustomSizebox(
            height: 25.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: CustomText(
                title:
                "Start your VDC subscription. Create your own VMs\n and other resources for a complete virtual data \n center.",
                color: Appcolor.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                textAlign: TextAlign.center),
          ),
          CustomSizebox(
            height: 81.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 21.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50)),
                  ),
                  child: Center(
                      child: GestureDetector(
                        onTap: (){
                          Get.to(BoardFour());
                        },
                        child: Text(
                          "Skip ",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black38),
                        ),
                      ))),
              CustomSizebox(
                width: 267.w,
              ),
              GestureDetector(
                onTap: () {
                  Get.to (BoardFour());
                },
                child: Container(
                    alignment: Alignment.centerRight,
                    height: 50.h,
                    width: 96.w,
                    decoration: BoxDecoration(
                      color: Appcolor.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),
                    ),
                    child: Center(
                        child: Text(
                          "Next ",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ))),
              ),
            ],
          )
        ],
      ),
    );;
  }
}

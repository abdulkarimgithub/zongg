import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zongapp/Board%202/board2.dart';
import 'package:zongapp/utils/Boxsize/boxsize.dart';
import 'package:zongapp/utils/Text/text.dart';
import 'package:zongapp/utils/color/colors.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

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
              child: Image(image: AssetImage("assets/images/image 6.png")),
            ),
          ),
          CustomSizebox(height: 60.h),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: CustomText(
                title: "Co-Location",
                color: Appcolor.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.sp),
          ),
          CustomSizebox(
            height: 25.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: CustomText(
                title:
                    "Cloud-Tribe Host your IT infrastructure in a safe\n environment, ensuring availability and connectivity\n for your business.",
                color: Appcolor.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                textAlign: TextAlign.center),
          ),
          CustomSizebox(
            height: 126.h,
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
                          Get.to(BoardTwo());
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
                  Get.to(BoardTwo());
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
    );
  }
}

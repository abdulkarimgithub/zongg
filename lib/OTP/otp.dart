import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zongapp/Login/login.dart';
import 'package:zongapp/utils/Boxsize/boxsize.dart';
import 'package:zongapp/utils/Button/button.dart';
import 'package:zongapp/utils/Text/text.dart';
import 'package:zongapp/utils/Textformfield/text.field.dart';
import 'package:zongapp/utils/color/colors.dart';
import 'package:pinput/pinput.dart';

class OtP extends StatelessWidget {
  const OtP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 926.h,
        width: 428.w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 91, left: 81, right: 81),
                child: Container(
                    height: 157.h,
                    width: 186.w,
                    decoration: BoxDecoration(
                        color: Appcolor.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Image(
                        image: AssetImage("assets/images/zong_logo 2.png"),
                      ),
                    )),
              ),
              CustomSizebox(
                height: 20.h,
              ),
              CustomText(
                  title: "Forgot Password!",
                  color: Appcolor.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp),
              CustomSizebox(
                height: 4.h,
              ),
              CustomText(
                  title: "Enter OTP, we have send it to your Email you entered",
                  color: Appcolor.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp),
              CustomSizebox(
                height: 93.h,

              ),
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
        Text("Enter OTP",

      style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white,),),
  ],
),
CustomSizebox(
  height: 16.h,
),
Pinput(

  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  length: 4,
  defaultPinTheme: PinTheme(
    height: 60.h,
    width: 60.w,
    decoration: BoxDecoration(

      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.20))

    )
  ),
),



              CustomSizebox(
                height: 162.h,
              ),
              GestureDetector(
                  onTap: (){
                    Get.to(LogIn());
                  },
                  child: CustomButton(name: "RESET")),
              CustomSizebox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomText(
                      title: "Remembered Password?",
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp),
                  GestureDetector(
                    onTap: (){
                      Get.to(LogIn());
                    },
                    child: CustomText(
                        title: " Login Now",
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zongapp/Login/login.dart';
import 'package:zongapp/OTP/otp.dart';
import 'package:zongapp/utils/Boxsize/boxsize.dart';
import 'package:zongapp/utils/Button/button.dart';
import 'package:zongapp/utils/Text/text.dart';
import 'package:zongapp/utils/Textformfield/text.field.dart';
import 'package:zongapp/utils/color/colors.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                  title: "Provide your email & we will send you link to reset password",
                  color: Appcolor.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp),
              CustomSizebox(
                height: 147.h,
              ),


              CustomTextfield(
                hintText: "    Email",
                icon: Icons.email,
              ),


              CustomSizebox(
                height: 162.h,
              ),
              GestureDetector(
                  onTap: (){

                    Get.to(OtP());
                  },
                  child: CustomButton(name: "Send OTP")),
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


                    },
                    child: GestureDetector(
                      onTap: (){
                        Get.to(LogIn());
                      },
                      child: CustomText(
                          title: " Login Now",
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );;
  }
}

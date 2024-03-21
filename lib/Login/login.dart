import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zongapp/Forget%20password/forget_password.dart';
import 'package:zongapp/Home%20Screen/homescreen.dart';
import 'package:zongapp/Sign%20Up/signup.dart';
import 'package:zongapp/utils/Boxsize/boxsize.dart';
import 'package:zongapp/utils/Button/button.dart';
import 'package:zongapp/utils/Text/text.dart';
import 'package:zongapp/utils/Textformfield/text.field.dart';
import 'package:zongapp/utils/color/colors.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                  title: "Welcome Back!",
                  color: Appcolor.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp),
              CustomSizebox(
                height: 4.h,
              ),
              CustomText(
                  title: "Login to your account",
                  color: Appcolor.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp),
              CustomSizebox(
                height: 112.h,
              ),
              CustomTextfield(
                hintText: "     User Name",
                icon: Icons.person,
              ),
              CustomSizebox(
                height: 25.h,
              ),
              CustomTextfield(
                hintText: "    Password",
                icon: Icons.lock,
              ),
              CustomSizebox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(ForgetPassword());
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
              CustomSizebox(
                height: 90.h,
              ),
              GestureDetector(
                  onTap: (){
                    Get.to(HomeScreen());
                  },

                  child: CustomButton(name: "LOGIN")),
              CustomSizebox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      title: "Not have an account?",
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp),
                  GestureDetector(
                    onTap: (){
                      Get.to(SignUp());
                    },
                    child: CustomText(
                        title: " Signup Now",
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zongapp/Login/login.dart';
import 'package:zongapp/utils/Boxsize/boxsize.dart';
import 'package:zongapp/utils/Button/button.dart';
import 'package:zongapp/utils/Text/text.dart';
import 'package:zongapp/utils/Textformfield/text.field.dart';
import 'package:zongapp/utils/color/colors.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  title: "SIGN UP!",
                  color: Appcolor.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp),
              CustomSizebox(
                height: 4.h,
              ),
              CustomText(
                  title: "Create an account",
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
                hintText: "    Email",
                icon: Icons.email,
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

              CustomSizebox(
                height: 90.h,
              ),
              CustomButton(name: "SIGN UP"),
              CustomSizebox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomText(
                      title: "Already have an account?",
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zongapp/Board%202/board2.dart';
import 'package:zongapp/Board1/homepage.dart';
import 'package:zongapp/Home%20Screen/homescreen.dart';
import 'package:zongapp/Login/login.dart';
import 'package:zongapp/OTP/otp.dart';
import 'package:zongapp/Share%20File/share.dart';
import 'package:zongapp/utils/Textformfield/text.field.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _SplashScreenState();
    nevigatetohome();
  }

  nevigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>MyHomepage ()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: Container(
              height: 83.h,
              width: 260.w,
              child:
                  Image(image: AssetImage("assets/images/zong_logo 3.png")))),
    ));
  }
}

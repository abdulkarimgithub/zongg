import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  String name;

  CustomButton({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 328.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(name,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.green,
              fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}

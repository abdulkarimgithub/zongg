import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zongapp/utils/Boxsize/boxsize.dart';
import 'package:zongapp/utils/color/colors.dart';


class ShareFile extends StatefulWidget {
  const ShareFile({Key? key}) : super(key: key);

  @override
  State<ShareFile> createState() => _ShareFileState();
}

class _ShareFileState extends State<ShareFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25,top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Interface Folder Circle Share.png"),fit: BoxFit.fill
              )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text("Share “File Name.png",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16.sp),),
    SizedBox(
    height: 10.h,
    ),
    Text("Set a permission for your file & tap Done",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp),),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_add_alt),
                hintText: " Add People",
                suffixIcon: Icon(Icons.send_outlined),
                filled: true,
                fillColor: const Color(0xffF3F4FB),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffF3F4FB)),
                    borderRadius: BorderRadius.circular(24)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffF3F4FB)),
                    borderRadius: BorderRadius.circular(24)),
              ),
            ),
            SizedBox(height: 31.h,),
            Row(
              children: [
                Text("Peoples with access",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp),),
              ],
            ),
            Column(
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
                          height: 55.w,
                          width: 55.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Appcolor.green,
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/Man 9.png")),
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
                          "Nouman Imran (You)",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Text(
                          "@noumanimran",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black38),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 91.w,
                    ),
                    Text(
                      "Owner",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),),

                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Share",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),),
                  ],
                ),

                Column(
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
                              height: 55.w,
                              width: 55.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Appcolor.green,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/Lock.png")),
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
                              "Restricted",

                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),

                            ),
                            Text(
                              "Only you can view this file",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black38),
                            ),
                          ],
                        ),



                      ],
                    ),



                  ],
                ),
              ],
            ),

            SizedBox(height: 55.h,),
            Row(
              children: [
                Container(
                  height: 41.h,
                  width: 151.w,

                  child: Center(child: Text("Copy Link",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Appcolor.pink),)),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border:Border.all(color: Appcolor.pink,),
                  color: Colors.white),

                ),
                SizedBox(width: 21.w,),
                Container(
                  height: 41.h,
                  width: 151.w,

                  child: Center(child: Text("Done",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Appcolor.white),)),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      border:Border.all(color: Appcolor.pink,),
                      color: Colors.pink),

                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}

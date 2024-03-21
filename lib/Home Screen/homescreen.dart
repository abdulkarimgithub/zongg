import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zongapp/Recent%20File/recent.dart';
import 'package:zongapp/Recyclebin/bin.dart';
import 'package:zongapp/Share%20File/share.dart';
import 'package:zongapp/utils/Boxsize/boxsize.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zongapp/utils/CustomContainer/container.dart';
import 'package:zongapp/utils/ListContainer/listcontainer.dart';
import 'package:zongapp/utils/Text/text.dart';
import 'package:zongapp/utils/Textformfield/text.field.dart';
import 'package:zongapp/utils/color/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List myfilesData = [
  [Color.fromRGBO(141, 197, 64, 0.08), "UI Design", "8:24 pm"],
  [Color.fromRGBO(232, 8, 127, 0.08), "Flutter", "8:24 pm"],
  [Color.fromRGBO(141, 197, 64, 0.08), "Laravel", "8:24 pm"],
];
List myList = [
  ["Logo.png", "assets/images/Group 1.png", "8:24 pm"],
  ["Faded.mp3", "assets/images/Music Sign.png", "8:24 pm"],
  ["Faded.mp3", "assets/images/Music Sign.png", "8:24 pm"],
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Cloud-Tribe",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: Color(0xff162A43),
            ),
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 30,
              ),
              child: Image(image: AssetImage("assets/images/Man 9.png")),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color(0xff80BD36),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Appcolor.green),
                accountName: Text("Nouman Imran"),
                accountEmail: Text("@noumanimran"),
                currentAccountPicture: Container(
                  height: 97.h,
                  width: 97.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Frame 1.png"))),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.folder,
                  color: Colors.white,
                ),
                title: Text(
                  "My Drive",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.verified_user,
                  color: Colors.white,
                ),
                title: GestureDetector(
                  onTap: (){

                    Get.to(ShareFile());
                  },
                  child: Text(
                    "Shared with me",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.timelapse_rounded,
                  color: Colors.white,
                ),
                title: GestureDetector(
                  onTap: (){

                    Get.to(RecentFile());
                  },
                  child: Text(
                    "Recent",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                title: GestureDetector(
                  onTap: (){
                    Get.to(RecycleBin());
                  },
                  child: Text(
                    "Bin",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  "Setting",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.storage,
                  color: Colors.white,
                ),
                title: Text(
                  "Storage",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: " Search here",
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
              CustomSizebox(
                height: 20.h,
              ),
              Container(
                height: 140.h,
                width: 378.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Appcolor.green,
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
                              height: 55.w,
                              width: 55.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/zong_logo 2.png")),
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
                              "Free Storage",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              "13.6 GB / 15 GB",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: LinearProgressIndicator(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        value: 0.8,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              CustomSizebox(
                height: 20.h,
              ),
              CustomText(
                  title: "Files",
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp),
              CustomSizebox(
                height: 15.h,
              ),
              CustomText(
                  title: " Last modified",
                  color: Colors.black38,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp),
              CustomSizebox(
                height: 15.h,
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
// itemExtent: 200,

                  padding: EdgeInsets.all(14),
                  scrollDirection: Axis.horizontal,
                  itemCount: myfilesData.length,
                  itemBuilder: (context, index) {
                    return CustomContainer(
                      color1: myfilesData[index][0],
                      title: myfilesData[index][1],
                      title1: myfilesData[index][2],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15,
                    );
                  },
                ),
              ),
              CustomSizebox(
                height: 25.h,
              ),
              Row(
                children: [
                  CustomText(
                      title: "My Files",
                      color: Colors.pink,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp),
                  CustomSizebox(width: 33.w),
                  CustomText(
                      title: "Shared",
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp),
                  CustomSizebox(width: 195.w),
                  Container(
                    height: 27.h,
                    width: 27.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Colors.white,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/Vector.png")),
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(10),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListContainer(
                          title: myList[index][0], image: myList[index][1],time: myList[index][2],);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 15.h,
                      );
                    },
                    itemCount: myList.length),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            child: new Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Appcolor.green,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            onPressed: () {}));
  }
}

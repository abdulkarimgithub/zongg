import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zongapp/utils/Boxsize/boxsize.dart';
import 'package:zongapp/utils/ListContainer/listcontainer.dart';
import 'package:zongapp/utils/Text/text.dart';
import 'package:zongapp/utils/color/colors.dart';

class RecentFile extends StatefulWidget {
  const RecentFile({Key? key}) : super(key: key);

  @override
  State<RecentFile> createState() => _RecentFileState();
}
List recentList = [
  ["Logo.png", "assets/images/Group 1.png","8:24 pm"],
  ["Faded.mp3", "assets/images/Music Sign.png","10:21 pm"],
  ["Flutter.png", "assets/images/Group 1.png","8:32 pm"],
  ["Faded.mp3", "assets/images/Music Sign.png","7:14 pm"],
  ["Flutter.png", "assets/images/Group 1.png","8:32 pm"],
  ["Faded.mp3", "assets/images/Music Sign.png","7:14 pm"],

];

class _RecentFileState extends State<RecentFile> {
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
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
            CustomSizebox(
              height: 25.h,
            ),
            Row(
              children: [
                CustomText(
                    title: "Recent",
                    color: Appcolor.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp),
                CustomSizebox(width: 300.w),

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
                        title: recentList[index][0], image: recentList[index][1],time: recentList[index][2],);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 15.h,
                    );
                  },
                  itemCount: recentList.length),
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

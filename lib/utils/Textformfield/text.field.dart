import 'package:flutter/material.dart';
import 'package:zongapp/utils/color/colors.dart';

class CustomTextfield extends StatelessWidget {
  String? hintText;
  IconData? icon;

  CustomTextfield({Key? key, this.hintText, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),

      ),
          contentPadding: EdgeInsets.only(left: 10),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: Appcolor.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30)
          ),
          fillColor: Color.fromRGBO(255, 255, 255, 0.08),
          filled: true,

          prefixIcon: Expanded(

            child: CircleAvatar(
              
                backgroundImage: AssetImage("assets/images/Ellipse 1.svg"),
                
                child: Icon(
                  
                  icon,
                  color: Color(0xff80BD36),
                )),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          )),
    );
  }
}

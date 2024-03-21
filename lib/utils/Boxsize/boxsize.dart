import 'package:flutter/material.dart';

class CustomSizebox extends StatelessWidget {
  double? height;
  double? width;

   CustomSizebox({Key? key, this.width,  this.height }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}

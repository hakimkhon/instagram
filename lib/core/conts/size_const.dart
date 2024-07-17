import 'package:flutter/material.dart';

class SizeConst {
  static double height(double sizeHeight, BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  
  static double width(double sizeWidth, BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

}

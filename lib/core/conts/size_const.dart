import 'package:flutter/material.dart';

class SizeConst {
  //100 bo'lishdan maqsad % foizda ifodalash
  static double height(double sizeHeight, BuildContext context) {
    return MediaQuery.of(context).size.height * sizeHeight / 100;
  }

  static double width(double sizeWidth, BuildContext context) {
    return MediaQuery.of(context).size.width * sizeWidth / 100;
  }
}

// class Images {
//   static String url(int size) {
//     return ("https://picsum.photos/$size/$size");
//   }
// }

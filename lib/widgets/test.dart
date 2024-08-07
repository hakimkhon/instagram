import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:instagram/mocks/mock_data.dart';
// import 'package:instagram/mocks/instagram_data.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    double radius = 40;
    double numberOfStores = 1;
    double emptyPartOfBorder = 0;
    double padding = 7;
    double borderLong =
        (2 * pi * (radius + padding) - emptyPartOfBorder * numberOfStores) /
            numberOfStores;
    int index = 4;
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: DottedBorder(
          color: const Color.fromRGBO(166, 15, 147, 1),
          radius: Radius.circular(radius),
          padding: EdgeInsets.all(padding),
          strokeWidth: padding * 0.75,
          borderType: BorderType.Circle,
          dashPattern: [borderLong, emptyPartOfBorder],
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage(
                'assets/images/${MockData.instagram[index].image}.jpg'),
          ),
        )),
      ),
    );
  }
}

import 'dart:math';
import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double darius = 120;
    double istoriyalar_soni = 3;
    double chegara = 5;
    double padding = 10;
    double a = (2 * pi * (darius + padding) - chegara * istoriyalar_soni) / istoriyalar_soni;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Lesson 13"),
      // ),
      body: SafeArea(
        child: Center(
            child: DottedBorder(
          color: Colors.green,
          radius: Radius.circular(180),
          padding: EdgeInsets.all(padding),
          strokeWidth: padding,
          borderType: BorderType.Circle,
          dashPattern: [a, chegara],
          child: CircleAvatar(
            radius: darius,
            backgroundImage: AssetImage('asset/images/ferrari.jpg'),
          ),
        )),
      ),
    );
  }
}

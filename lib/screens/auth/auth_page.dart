import 'package:flutter/material.dart';
import 'package:instagram/core/conts/size_const.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Auth page"),
      ),
      body: Center(child: Container(
        height: SizeConst.height(25, context),
        width: SizeConst.width(85, context),
        color: Colors.blue,
      ),),
    );
  }
}
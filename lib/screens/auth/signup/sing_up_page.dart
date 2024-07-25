import 'package:flutter/material.dart';
import 'package:instagram/core/conts/size_const.dart';
import 'package:instagram/core/resources/resource.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text("Sing Up page"),
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(flex: 2, child: SizedBox()),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const Center(child: Image(image: AssetImage(ImageAssets.insSingUp))),
                  customContainer("user name", context),
                  customContainer("Password", context),
                ],
              ),
            ),
          ),
          const Expanded(flex: 2, child: SizedBox()),
        ],
      ),
    );
  }
}

Widget customContainer(String text, BuildContext context) {
  return Container(
        height: SizeConst.height(7, context),
        margin: EdgeInsets.only(top: SizeConst.height(2, context)),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black),
          ),
        ),
      );
}

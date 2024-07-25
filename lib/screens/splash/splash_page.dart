import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/core/conts/size_const.dart';
import 'package:instagram/core/resources/resource.dart';
import 'package:instagram/routes/instagram_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isAuth = false;

  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        if (isAuth) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            InstagramRouteNames.home,
            (Route<dynamic> root) => false,
          );
        } else {
          Navigator.pushNamedAndRemoveUntil(
            context,
            InstagramRouteNames.singIn,
            (Route<dynamic> root) => false,
          );
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // title: const Text("splash page"),
      //     ),
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 8,
            child: Center(
              child: Image(
                height: SizeConst.height(15, context),
                image: const AssetImage(ImageAssets.instagramLogo),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "from",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Image(
                  image: const AssetImage(ImageAssets.metaLogo),
                  height: SizeConst.height(6, context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

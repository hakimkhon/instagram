import 'dart:async';

import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
          // title: const Text("splash page"),
          ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Image(height: MediaQuery.of(context).size.height*0.1, 
              image: const AssetImage(ImageAssets.instagramLogo)),
            ),
          ),
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}

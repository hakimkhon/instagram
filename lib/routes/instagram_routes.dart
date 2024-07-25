import 'package:flutter/material.dart';
import 'package:instagram/screens/auth/auth_page.dart';
import 'package:instagram/screens/auth/signin/sing_in_page.dart';
import 'package:instagram/screens/auth/signup/sing_up_page.dart';
import 'package:instagram/screens/splash/splash_page.dart';
import 'package:instagram/widgets/home_page.dart';

class InstagramRouteNames {
  static const String splash = "/splash";
  static const String home = "/home";
  static const String singIn = "/singIn";
  static const String singUp = "/singUp";
  static const String auth = "/auth";
}

class InstagramRoutes {
  // static final InstagramRoutes _instance = InstagramRoutes._init();
  // static InstagramRoutes get instance => _instance;
  // InstagramRoutes._init();
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case InstagramRouteNames.splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());

      case InstagramRouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());

      case InstagramRouteNames.singIn:
        return MaterialPageRoute(builder: (context) => const SingInPage());

      case InstagramRouteNames.singUp:
        return MaterialPageRoute(builder: (context) => const SingUpPage());

      case InstagramRouteNames.auth:
        return MaterialPageRoute(builder: (context) => const AuthPage());

      default:
        return MaterialPageRoute(builder: (context) => const SplashPage());
    }
  }
}

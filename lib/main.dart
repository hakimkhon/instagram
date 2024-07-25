import 'package:flutter/material.dart';
import 'package:instagram/routes/instagram_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 3, 1, 28)),
        useMaterial3: true,
      ),
      onGenerateRoute: InstagramRoutes.generateRoute,
      initialRoute: InstagramRouteNames.splash,
      // home: const HomePage(),
    );
  }
}

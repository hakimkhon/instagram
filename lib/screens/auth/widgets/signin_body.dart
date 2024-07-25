import 'package:flutter/material.dart';
import 'package:instagram/core/resources/resource.dart';
import 'package:instagram/routes/instagram_routes.dart';
import 'package:instagram/screens/auth/widgets/log_in_button.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(child: Image(image: AssetImage(ImageAssets.insLogin))),
        const Padding(
          padding: EdgeInsets.only(top: 30.0, bottom: 15),
          child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage("https://picsum.photos/200")),
        ),
        const Text(
          "alpomish_sh",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
        LogInButton(
          title: "Log in",
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              InstagramRouteNames.home,
              (Route<dynamic> roote) => false,
            );
          },
        ),
        const Text(
          "Switch accounts",
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 20, color: Colors.blue),
        )
      ],
    );
  }
}

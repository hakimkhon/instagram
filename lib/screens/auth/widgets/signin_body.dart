import 'package:flutter/material.dart';
import 'package:instagram/core/conts/size_const.dart';
import 'package:instagram/core/resources/resource.dart';
// import 'package:instagram/routes/instagram_routes.dart';
import 'package:instagram/screens/auth/widgets/log_in_button.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(child: Image(image: AssetImage(ImageAssets.insLogin))),
        Padding(
          padding: EdgeInsets.only(
            top: SizeConst.height(5, context),
            bottom: SizeConst.height(2, context),
          ),
          child: const CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage("https://picsum.photos/200")),
        ),
        const Text(
          "alpomish_sh",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: SizeConst.height(2, context),
            bottom: SizeConst.height(4, context),
          ),
          child: LogInButton(
            text: "Log in",
            onTap: () {
              // Navigator.pushNamedAndRemoveUntil(
              //   // context,
              //   // InstagramRouteNames.home,
              //   // (Route<dynamic> roote) => false,
              // );
            },
          ),
        ),
        TextButton(
              onPressed: () {
                // Navigator.pushNamed(
                //   context,
                //   InstagramRouteNames.singUp,
                // );
              },
              child: const Text(
                "Switch accounts",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.blue),
              ),
            )
        // const Text(
        //   "Switch accounts",
        //   style: TextStyle(
        //       fontWeight: FontWeight.normal, fontSize: 20, color: Colors.blue),
        // )
      ],
    );
  }
}

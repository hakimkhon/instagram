import 'package:flutter/material.dart';
import 'package:instagram/routes/instagram_routes.dart';

class SigninFooter extends StatelessWidget {
  const SigninFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.black26,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don’t have an accoun?",
              style: TextStyle(color: Colors.black45, fontSize: 16),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  InstagramRouteNames.singUp,
                  (Route<dynamic> roote) => false,
                );
              },
              child: const Text(
                "Sign up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            )
          ],
        ),
      ],
    );
  }
}

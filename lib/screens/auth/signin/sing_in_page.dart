import 'package:flutter/material.dart';
import 'package:instagram/core/conts/size_const.dart';
import 'package:instagram/core/resources/resource.dart';
import 'package:instagram/routes/instagram_routes.dart';
import 'package:instagram/screens/auth/widgets/log_in_button.dart';
import 'package:instagram/screens/auth/widgets/signin_body.dart';
import 'package:instagram/screens/auth/widgets/signin_footer.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConst.width(6, context)),
                child: SigninBody(),
              ),
            ),
            const Expanded(flex: 1, child: SigninFooter()),
          ],
        ),
      ),
    );
  }
}


//Image(image: NetworkImage("https://picsum.photos/200/200"))
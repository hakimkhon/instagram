import 'package:flutter/material.dart';
import 'package:instagram/core/conts/size_const.dart';
import 'package:instagram/core/resources/resource.dart';
import 'package:instagram/routes/instagram_routes.dart';
import 'package:instagram/screens/auth/widgets/log_in_button.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text("Sing Up page"),
          ),
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    const Center(
                      child: Image(image: AssetImage(ImageAssets.insSingUp)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConst.height(4, context)),
                      child: customContainer("user name", context),
                    ),
                    customContainer("Password", context),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(
                          top: SizeConst.height(1, context),
                          bottom: SizeConst.height(4, context)),
                      width: SizeConst.width(100, context),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget password?",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    LogInButton(
                      onTap: () {},
                      text: "Log in",
                      containerOpacity: 0.6,
                      borderOpacity: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConst.height(5, context)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.facebook_sharp,
                            color: Colors.blue,
                            size: 26,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Log in with Facebook",
                            style: TextStyle(color: Colors.blue, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Divider(
                              color: Colors.black26,
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Text(
                                "OR",
                                style: TextStyle(color: Colors.black38),
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                            flex: 4,
                            child: Divider(
                              color: Colors.black26,
                            ),
                          ),
                        ],
                      ),
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
                            Navigator.pushNamed(
                              context,
                              InstagramRouteNames.singIn,
                            );
                          },
                          child: const Text(
                            "Log in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const Divider(
                      color: Colors.black26,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConst.height(2, context)),
                      child: const Text(
                        "Instagram or Facebook",
                        style: TextStyle(color: Colors.black45, fontSize: 14),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

Widget customContainer(String text, BuildContext context) {
  return Container(
    alignment: const Alignment(-0.85, 0),
    height: SizeConst.height(6, context),
    width: SizeConst.width(100, context),
    margin: EdgeInsets.only(top: SizeConst.height(2, context)),
    decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12)),
    child: Text(
      // textAlign: TextAlign.ricght,
      text,
      style: const TextStyle(
          fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black38),
    ),
  );
}

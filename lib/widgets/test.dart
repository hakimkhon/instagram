import 'package:flutter/material.dart';
import 'package:instagram/mocks/instagram_data.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(
                            "assets/images/${InstagramData.image[index]}.jpg"),
                      ),
                      // Text(InstagramData.instagram)
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instagram/mocks/instagram_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // double radiuc = 120;
    // double numberOfStores = 3;
    // double emptyPartOfBorder = 5;
    // double padding = 10;
    // double borderLong = (2 * pi * (radiuc + padding) - emptyPartOfBorder * numberOfStores) / numberOfStores;

    return Scaffold(
      appBar: AppBar(
          title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            SizedBox(
              width: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.camera_alt_outlined),
                  Text("Instagram"),
                ],
              ),
            ),
            SizedBox(
              width: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.tv),
                  Icon(Icons.send_outlined),
                ],
              ),
            )
          ])),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          children: [
            const Divider(color: Colors.black26),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              child: ListView.builder(
                itemCount: InstagramData.image.length,
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
                        Text(InstagramData.image[index])
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(color: Colors.black26),
          ],
        ),
      ),
    );
  }
}

/*
Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  CircleAvatar(
                    radius: 43,
                    backgroundColor: Color.fromARGB(172, 184, 33, 22),
                    child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/women/74.jpg')),
                  ),
                  Text("Your story",
                      style: TextStyle(fontWeight: FontWeight.w500))
                ]),
                Column(children: [
                  CircleAvatar(
                    radius: 43,
                    backgroundColor: Color.fromARGB(172, 184, 33, 22),
                    child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/women/64.jpg')),
                  ),
                  Text("Your story",
                      style: TextStyle(fontWeight: FontWeight.w500))
                ]),
                Column(children: [
                  CircleAvatar(
                    radius: 43,
                    backgroundColor: Color.fromARGB(172, 184, 33, 22),
                    child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/women/54.jpg')),
                  ),
                  Text("Your story",
                      style: TextStyle(fontWeight: FontWeight.w500))
                ]),
                Column(children: [
                  CircleAvatar(
                    radius: 43,
                    backgroundColor: Color.fromARGB(172, 184, 33, 22),
                    child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/women/34.jpg')),
                  ),
                  Text("Your story",
                      style: TextStyle(fontWeight: FontWeight.w500))
                ]),
              ],
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.12,
                  child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://randomuser.me/api/portraits/women/88.jpg')),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  // height: 100,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Text(
                              "jousha_Id",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(" "),
                            Icon(
                              Icons.task,
                              size: 14,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      Text("Tokyo, Japan"),
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  size: 26,
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 400,
            child: Image.asset(
              "assets/images/flower.jpg",
              fit: BoxFit.cover,
            ),
          )
        

 */


/*
body: SafeArea(
        child: Center(
            child: DottedBorder(
          color: Colors.green,
          radius: Radius.circular(180),
          padding: EdgeInsets.all(padding),
          strokeWidth: padding,
          borderType: BorderType.Circle,
          dashPattern: [borderLong, emptyPartOfBorder],
          child: CircleAvatar(
            radius: darius,
            backgroundImage: AssetImage('asset/images/ferrari.jpg'),
          ),
        )),
      ),
 */
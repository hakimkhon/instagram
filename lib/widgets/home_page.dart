import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Divider(color: Colors.black26),
          SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 4),
                      child: DottedBorder(
                        color: Colors.green,
                        padding: const EdgeInsets.all(6),
                        strokeWidth: 5,
                        borderType: BorderType.Circle,
                        // dashPattern: [1, 0],
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage("assets/images/ferrari.jpg"),
                          // child: Text(
                          //   index.toString(),
                          //   style: const TextStyle(fontSize: 22.0),
                          // ),
                        ),
                      ),
                    ),
                    const Text(
                      "Your story",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                );
              },
            ),
          ),
          const Divider(color: Colors.black26),
        ],
      ),
    );
  }
}

/*
 DottedBorder(
                            color: const Color.fromRGBO(217, 26, 70, 1),
                            padding: const EdgeInsets.all(5),
                            strokeWidth: 4,
                            borderType: BorderType.Circle,
                            dashPattern: const [10, 0],
                            child: const CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage("assets/images/ferrari.jpg"),
                            ),
                          ),
*/

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


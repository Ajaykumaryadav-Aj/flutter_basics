import 'dart:developer';

import 'package:flutter/material.dart';

class TonyStarkScreen extends StatelessWidget {
  const TonyStarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'Welcome back',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Tony Stark'),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              log('Circle');
            },
            icon: const Icon(
              Icons.circle_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              log('Widget');
            },
            icon: const Icon(
              Icons.widgets_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: RichText(
              text: const TextSpan(
                text: "Find Best Mentor's For  You ",
                style: TextStyle(
                  fontSize: 55,
                  fontFamily: 'RopaSans',
                  color: Colors.black87,
                ),
                children: [
                  WidgetSpan(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://imgv3.fotor.com/images/cover-photo-image/a-beautiful-girl-with-gray-hair-and-lucxy-neckless-generated-by-Fotor-AI.jpg"),
                        ),
                        Positioned(
                          left: 20,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv-RmbbqvwGsaz4PytA63zRgBGdBIn7FroPg&usqp=CAU"),
                          ),
                        ),
                        Positioned(
                          left: 40,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/tony.jpg"),
                          ),
                        ),
                        Positioned(
                          left: 60,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdY7VUYPp-d05SsEWayj4t8snk5ohEzPt5UQ&usqp=CAU"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints.tight(const Size(210, 65)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    textDirection: TextDirection.ltr,
                    "Explore",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 131, 129, 129)),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tight(const Size(165, 65)),
                child: const Text(
                  textDirection: TextDirection.rtl,
                  "Read  Profile Of Your Mentors And Find Perfect Match For You",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/images/tony.jpg',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 275, top: 142),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: IconButton(
                            onPressed: () {
                              log("More Information");
                            },
                            icon: const Icon(Icons.double_arrow_sharp),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const ListTile(
                    titleTextStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                    subtitleTextStyle: TextStyle(
                        color: Color.fromARGB(255, 173, 14, 3),
                        fontWeight: FontWeight.bold),
                    title: Text('Ashwin'),
                    subtitle: Text('Qlan CTO & CO-FOUNDER'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(maxHeight: 200, maxWidth: 250),
                        child: const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis , vel volutpat nibh accumsan.")),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            log('Read case study ');
                          },
                          style: const ButtonStyle(
                            side: MaterialStatePropertyAll(
                              BorderSide(
                                width: 1.3,
                                color: Color.fromARGB(255, 173, 14, 3),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Read case study',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 173, 14, 3),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

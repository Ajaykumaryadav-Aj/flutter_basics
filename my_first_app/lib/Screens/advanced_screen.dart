import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Advancedwidgets extends StatefulWidget {
  const Advancedwidgets({super.key});

  @override
  State<Advancedwidgets> createState() => AdvancedWidgets();
}

class AdvancedWidgets extends State<Advancedwidgets> {
  bool scale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced scrren'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(angle: pi / 4, child: const Text('service')),
                const SizedBox(height: 30),
                const VerticalDivider(),
                const Text('Advanced'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ClipOval(
              child: Container(
                height: 120,
                width: 100,
                color: const Color.fromARGB(255, 246, 228, 172),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Transform.scale(
            scaleX: scale ? 2 : 1.5,
            scaleY: scale ? 3 : 2,
            child: Container(
              height: 50,
              width: 50,
              color: const Color.fromARGB(255, 227, 169, 169),
              // child: const Networkimage(
              //     src:
              //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4u3Yzxw9raugT6T-MtUrhxeeZNmO8hLbfdQ&usqp=CAU'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                scale = !scale;
              });
            },
            child: const Text('click'),
          ),
          Transform.translate(
            offset: scale ? const Offset(10, 50) : Offset.zero,
            child: Container(
              height: 40,
              width: 40,
              color: const Color.fromARGB(255, 163, 204, 237),
            ),
          )
        ],
      ),
    );
  }
}

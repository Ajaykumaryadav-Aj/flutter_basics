import 'package:flutter/material.dart';

class MyUiDesign extends StatelessWidget {
  const MyUiDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        actions: const [Icon(Icons.widgets), Icon(Icons.circle),],
        title: const Column(
          children: [
            Text('Welcome back'),
            Text('Tonny Stark'),
          ],
        ),
      ),
    );
  }
}

        // child: Column(
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.fromLTRB(13, 50, 13, 0),
        //       child: ListTile(
        //         title: Text('Welcome Back', style: TextStyle(fontSize: 13)),
        //         subtitle: Text(
        //           'Tony Stark',
        //           style: TextStyle(fontSize: 20.0),
        //         ),
        //         trailing: Wrap(
        //           spacing: 10.0,
        //           children: [
        //             Icon(Icons.circle_rounded),
        //             Icon(
        //               Icons.widgets,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
            // RichText(
            //   text: const TextSpan(
            //       text: 'abbbbbbbbb',
            //       style: TextStyle(fontSize: 70.0, color: Colors.amber),
            //       children: [TextSpan(text: 'aaaaaaaaaaaaaaaaaaaaaay')]),
            // ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(0, 60, 130, 0),
            //   child: Text(
            //     'Find Best\nMentors For\nYou',
            //     style: TextStyle(fontSize: 40.0),
            //   ),
            // ),
            // Stack(
            //   clipBehavior: Clip.none,
            //   children: [
            //     CircleAvatar(
            //       backgroundColor: Colors.amber,
            //     ),
            //     Positioned(
            //       left: 20,
            //       child: CircleAvatar(
            //         backgroundColor: Colors.blue,
            //       ),
            //     ),
            //     Positioned(
            //       left: 40,
            //       child: CircleAvatar(
            //         backgroundColor: Colors.black12,
            //       ),
            //     )
            //   ],
            // )
          
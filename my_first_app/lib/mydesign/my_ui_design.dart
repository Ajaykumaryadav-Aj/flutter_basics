import 'package:flutter/material.dart';

class MyUiDesign extends StatelessWidget {
  const MyUiDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.circle),
          Icon(
            Icons.widgets,
            // color: Colors.white,
          ),
        ],
        title: const Column(
          children: [
            Text(
              'Welcome back',
              style: TextStyle(fontSize: 15),
            ),
            Text('   Tonny Stark'),
          ],
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              text: 'Find best Mentors for You',
              style: TextStyle(
                color: Colors.black,
                fontSize: 55.0,
              ),
              children: [
                WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.all(9),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://e0.pxfuel.com/wallpapers/802/650/desktop-wallpaper-whatsapp-d-p-cute-couple-guitar-whatsapp-dp.jpg'),
                        ),
                        Positioned(
                          left: 20,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://w0.peakpx.com/wallpaper/794/29/HD-wallpaper-best-whatsapp-dp-boy-walking-alone-birds-thumbnail.jpg'),
                          ),
                        ),
                        Positioned(
                          left: 40,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://e1.pxfuel.com/desktop-wallpaper/525/690/desktop-wallpaper-indian-flag-for-whatsapp-dp-indian-flag-dp.jpg'),
                          ),
                        ),
                        Positioned(
                          left: 60,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://e1.pxfuel.com/desktop-wallpaper/932/376/desktop-wallpaper-stylish-boys-cool-profile-pics-dp-for-facebook-whatsapp-awesome-dp.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 45, 12),
                child: Text(
                  textDirection: TextDirection.ltr,
                  'Explore',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(59, 19, 0, 0),
                child: Text(
                  textDirection: TextDirection.rtl,
                  'Read profile of your Mentors\n Andfind perfect match for\n you ',
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              // clipBehavior: Clip.none,
              color: Colors.white,
              child: Column(
                children: [
                  // Image.network(''),
                  Image.asset('assets/images/profile tonny.jpeg'),
                  const ListTile(
                    titleTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                    subtitleTextStyle: TextStyle(
                      color: Color.fromARGB(255, 143, 12, 3),
                      fontSize: 20,
                    ),
                    title: Text('Ashwin'),
                    subtitle: Text('Qlan CTO and Co Founder'),
                    trailing: Icon(Icons.double_arrow_outlined),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis , vel volutpat nibh accumsan'),
                  )
                ],
              ),
            ),
          )
        ],
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

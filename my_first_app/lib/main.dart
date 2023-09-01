// flipkart clone*****************************************************

// import 'dart:developer';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'component/whatsapp/mywhatsapp.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flipkart",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(36, 97, 220, 1),
        ),
      ),
      //home: const MyHomeScreen(),
      home: const MyWhatsapp(),
    
      // home: const TonyStarkScreen(),
    );
  }
}

// class ImageWidget extends StatelessWidget {
//   const ImageWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold();
//   }
// }




//******************************************************************* */        1.1





// import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Flipkart clone",
//       color: Colors.black,
//       home: Scaffold(
//         appBar: AppBar(
//           // backgroundColor: const Color.fromRGBO(0, 200, 255, 1),
//           leading: IconButton(
//             onPressed: () {
//               print("Your Menu");
//             },
//             icon: const Icon(Icons.menu),
//           ),
//           title: const Text(
//             "Flipkart" '\n' "Explore Plus",
//             style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
//           ),
//           leadingWidth: 40,

//           actions: [
//             IconButton(
//               onPressed: () {
//                 print("Your items are added to cart");
//               },
//               icon: const Icon(Icons.shopping_cart_outlined),
//             ),
//             IconButton(
//               onPressed: () {
//                 print("Signup Successfully");
//               },
//               icon: const Text("Signup"),
//             ),
//             IconButton(
//               onPressed: () {
//                 print("Welcome User");
//               },
//               icon: const Text('login'),
//             ),
//           ],

//           bottom: AppBar(
//             title: Container(
//               width: double.infinity,
//               height: 40,
//               color: Colors.white,
//               child: const Center(
//                 child: TextField(
//                   decoration: InputDecoration(
//                       hintText: 'Search for something',
//                       prefixIcon: Icon(Icons.search),
//                       suffixIcon: Icon(Icons.camera_alt)),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         body: const Center(child: Text('flipkart')),
//       ),
//     );
//   }
// }
//
//







//========>>>>>>>>>>>      1







///import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "flipkart",
//       theme: ThemeData(
//         useMaterial3: true,
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: const Color.fromRGBO(36, 97, 220, 1),
//         ),
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Fipkart" '\n' "Expolre Plus",
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           backgroundColor: Colors.blue,
//           leading: const Icon(
//             Icons.menu,
//           ),
//           leadingWidth: 40,
//           actions: const [
//             Icon(Icons.shopping_cart, color: Colors.white),
//             Text(
//               '   Login  ',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//               ),
//             ),
//           ],

//           bottom: AppBar(
//             title: Container(
//               width: double.infinity,
//               height: 40,
//               color: Color.fromARGB(255, 255, 255, 255),
//               child: const Center(
//                 child: TextField(
//                   decoration: InputDecoration(
//                       hintText: 'Search for something',
//                       prefixIcon: Icon(Icons.search),
//                       suffixIcon: Icon(Icons.camera_alt)),
//                 ),
//               ),
//             ),
//           ),
//           // iconTheme: const IconThemeData(color: Colors.black),
//         ),
//         body: const Center(
//           child: Text(
//             'welcome in flipkart',
//             style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
//           ),
//         ),
//       ),
//     );
//   }
// }



// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     String name = 'Raj';

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "my first app",
//       theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(
//               seedColor: const Color.fromARGB(355, 124, 156, 244))),
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.blue,
//             title: const Text(
//               'my first app',
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           body: Center(
//             child: Text(name),
//           )),
//     );
//   }
// }








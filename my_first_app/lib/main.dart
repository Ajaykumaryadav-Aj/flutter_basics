import 'package:flutter/material.dart';

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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(36, 97, 220, 1),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              "flipkart\n expolre plus",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
            leading: const Icon(
              Icons.menu,
            ),
            leadingWidth: 19,
            actions: const [
              Icon(Icons.search_off_rounded),
              Icon(Icons.shopping_bag_sharp, color: Colors.white),
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
            iconTheme: const IconThemeData(color: Colors.black)),
        body: const Center(
          child: Text(
            'welcome in flipkart',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
          ),
        ),
      ),
    );
  }
}



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








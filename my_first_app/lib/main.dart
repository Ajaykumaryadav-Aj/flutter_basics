// flipkart clone*****************************************************

// import 'dart:developer';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/sliver_app_bar.dart';




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
      // home: const MyHomeScreen(),
      // home: const MyWhatsapp(),
    
      // home: const MyUiDesign(),
      home: const SliverScreen(),
    );
  }
}



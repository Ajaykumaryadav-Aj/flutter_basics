// flipkart clone*****************************************************

// import 'dart:developer';
// import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:my_first_app/providers/auth_provider.dart';
import 'package:my_first_app/providers/cart_provider.dart';
import 'package:my_first_app/screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // title: "flipkart",
        // theme: ThemeData(
        //   appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        //   useMaterial3: true,
        //   colorScheme: ColorScheme.fromSeed(
        //     seedColor: const Color.fromRGBO(36, 97, 220, 1),
        //   ),
        // ),

        // home: const MyHomeScreen(),
        // home: const MyWhatsapp(),
        // home: const ProductScreen(),
        // home: const SelectorScreen(),
        // home: const MyUiDesign(),
        // home: const SliverScreen(),
        home: LoginScreen1(),
      ),
    );
  }
}

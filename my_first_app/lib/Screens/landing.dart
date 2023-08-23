import 'package:flutter/material.dart';
import 'package:my_first_app/screens/apply.dart';
import 'package:my_first_app/screens/drawer.dart';
import 'package:my_first_app/screens/log_in_screen.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fipkart" '\n' "Expolre Plus",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        // leading: const Icon(
        //   Icons.menu,
        // ),
        // leadingWidth: 40,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: const Text(
              'Login    ',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            width: double.infinity,
            height: 40,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search for something',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt)),
              ),
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.white,
                height: 77,
                width: 410,
                child: Row(
                  children: [
                    Image.network(
                        "https://rukminim2.flixcart.com/flap/143/135/image/033f3268031fa0ba.jpg?q=60"),
                    Image.network(
                        "https://rukminim2.flixcart.com/flap/143/135/image/0f3d008be60995d4.jpg?q=60"),
                    Image.network(
                        "https://rukminim2.flixcart.com/flap/143/135/image/42f9a853f9181279.jpg?q=60"),
                    Image.network(
                        "https://rukminim2.flixcart.com/flap/143/135/image/cbcb478744635781.jpg?q=60"),
                    Image.network(
                        "https://rukminim2.flixcart.com/flap/143/135/image/913e96c334d04395.jpg?q=60")
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                  "https://rukminim2.flixcart.com/fk-p-flap/780/347/image/536445129efe63ff.jpg?q=60")
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.amberAccent,
                height: 145,
                width: 411,
                child: Row(
                  children: [
                    Image.network(
                        "https://rukminim2.flixcart.com/fk-p-flap/260/277/image/727c74caf1371290.jpg?q=60"),
                    Image.network(
                        "https://rukminim2.flixcart.com/fk-p-flap/260/277/image/d75f322503454c04.jpg?q=60"),
                    Image.network(
                        "https://rukminim2.flixcart.com/fk-p-flap/260/277/image/2892b18e223e07bf.png?q=60"),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

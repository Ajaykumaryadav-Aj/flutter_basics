import 'package:flutter/material.dart';

class Googlekeeps extends StatefulWidget {
  const Googlekeeps({super.key});

  @override
  State<Googlekeeps> createState() => _GooglekeepsState();
}

class _GooglekeepsState extends State<Googlekeeps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.amber,
        ),
      ),
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        toolbarHeight: 120,
        title: TextField(
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'Search',
            fillColor: Colors.white60,
            filled: true,
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(30),
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            suffixIcon: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.grid_view),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.account_circle),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [Icon(Icons.abc_outlined), Icon(Icons.grid_view)],
      // ),
    );
  }
}

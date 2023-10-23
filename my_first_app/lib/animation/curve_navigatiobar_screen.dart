import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurvenavigationBar extends StatelessWidget {
  const CurvenavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget>[
          Icon(CupertinoIcons.home, size: 30, color: Colors.white),
          Icon(CupertinoIcons.bag, size: 30, color: Colors.white),
          Icon(CupertinoIcons.music_albums, size: 30, color: Colors.white),
        ],
        color: Colors.black,
        buttonBackgroundColor: Colors.redAccent,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          // setState(() {
          //   _pageIndex = index;
          // });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}

class CurvenNavigation extends StatefulWidget {
  const CurvenNavigation({super.key});

  @override
  State<CurvenNavigation> createState() => _CurvenNavigationState();
}

class _CurvenNavigationState extends State<CurvenNavigation> {
  List myScreens = [const Screen1(), const Screen2(), const Screen3()];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.home),
          Icon(Icons.favorite),
          Icon(Icons.backpack_outlined)
        ],
        color: Colors.white,
        animationCurve: Curves.easeInOutCubic,
        index: _selectedIndex,
        letIndexChange: (value) => true,
        height: 75.0,
        buttonBackgroundColor: Colors.amber,
        // backgroundColor: Colors.green,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: myScreens[_selectedIndex],
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Screen1',
          style: TextStyle(fontSize: 50, color: Colors.amber),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Screen2',
          style: TextStyle(fontSize: 50, color: Colors.red),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Screen3',
          style: TextStyle(fontSize: 50, color: Colors.green),
        ),
      ),
    );
  }
}

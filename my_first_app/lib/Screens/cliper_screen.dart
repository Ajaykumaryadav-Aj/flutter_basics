import 'package:flutter/material.dart';

class CliperScreeen extends StatelessWidget {
  const CliperScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cliper Screen'),
      ),
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Container(
            color: Colors.amber,
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height * .8);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldclipper) => false;
}

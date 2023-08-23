import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  final String src;

  final String text;
  final double? padding;
  final double? margin;
  final double? image;

  const DrawerIcon(
      {super.key,
      required this.src,
      required this.text,
      this.padding,
      this.margin,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
      child: Image.network(
        src,
        height: 20,
        width: 20,
      ),
    );
  }
}

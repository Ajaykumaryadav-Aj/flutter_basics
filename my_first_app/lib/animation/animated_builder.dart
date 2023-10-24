import 'dart:math';

import 'package:flutter/material.dart';

class BuilderAnimated extends StatefulWidget {
  const BuilderAnimated({super.key});

  @override
  State<BuilderAnimated> createState() => _BuilderAnimatedState();
}

class _BuilderAnimatedState extends State<BuilderAnimated>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: _controller.value * 2.2 * pi,
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/aj1.jpg'),
              ),
            );
          },
        ),
      ),
    );
  }
}

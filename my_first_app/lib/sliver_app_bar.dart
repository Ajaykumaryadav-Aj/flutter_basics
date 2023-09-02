import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: SliverAppBar(),
    ));
  }
}

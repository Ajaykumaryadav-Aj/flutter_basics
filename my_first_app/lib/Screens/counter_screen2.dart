import 'package:flutter/material.dart';
import 'package:my_first_app/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page two'),
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, value, child) {
            return Text(value.counts.toString());
          },
        ),
      ),
    );
  }
}

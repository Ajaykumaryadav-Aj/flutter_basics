import 'package:flutter/material.dart';
import 'package:my_first_app/providers/counter_provider.dart';
import 'package:my_first_app/screens/counter_screen2.dart';
import 'package:provider/provider.dart';

class CountScreens extends StatefulWidget {
  const CountScreens({super.key});

  @override
  State<CountScreens> createState() => _CountScreensState();
}

class _CountScreensState extends State<CountScreens> {
  // int count = 0;
  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<CounterProvider>(context, listen: false);
    // print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Consumer<CounterProvider>(
              builder: (context, value, child) {
                return Text(
                  value.counts.toString(),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                countprovider.setCount();
              },
              child: const Text('Add'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageTwo(),
                  ),
                );
              },
              child: const Text('Page two'),
            )
          ],
        ),
      ),
    );
  }
}

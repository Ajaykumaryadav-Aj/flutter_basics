import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(109, 339, 109, 449),
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(
                  Radius.circular(13),
                ),
              ),
              height: 56,
              width: 173,
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(21, 16, 0, 16),
                    child: Text('Bottom', textAlign: TextAlign.left),
                  ),
                ],
              ),
              // color: Colors.black12
            ),
          ],
        ),
      ),
    );
  }
}

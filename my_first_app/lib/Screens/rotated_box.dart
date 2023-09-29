
import 'package:flutter/material.dart';

class Rotatedbox extends StatefulWidget {
  const Rotatedbox({super.key});

  @override
  State<Rotatedbox> createState() => _PageviewState();
}

class _PageviewState extends State<Rotatedbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rotatedbox'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      height: 30,
                      color: Colors.cyan,
                    ),
                  ),
                  Container(
                    color: Colors.amber,
                    child: const RotatedBox(
                      quarterTurns: 2,
                      child: Text(
                        'Something',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ));
  }
}

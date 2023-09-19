import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int get counts => _count;

  void setCount() {
    _count++;
    notifyListeners();
    // print(counts);
  }
}

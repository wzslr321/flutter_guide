import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _counter = 0;

  int get value {
    return _counter;
  }

  void incrementCounter(){
    _counter++;
    notifyListeners();
  }
}
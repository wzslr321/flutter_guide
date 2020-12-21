import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int counter = 0;

  int get counterValue {
    return counter;
  }

  void incrementCounter(){
    counter++;
  }

}
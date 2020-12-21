import 'package:flutter/material.dart';
import './screens/first_screen.dart';
import './screens/second_screen.dart';
import './screens/page_not_found_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Guide',
      home: FirstScreen(),
      routes:{
        SecondScreen.routeName:(ctx) => SecondScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => PageNotFoundScreen());
      },
    );
  }
}


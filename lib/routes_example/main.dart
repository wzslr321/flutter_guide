import 'package:flutter/material.dart';
import './screens/screen_first.dart';
import './screens/screen_second.dart';
import './screens/page-not-found.dart';

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


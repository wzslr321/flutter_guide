import 'package:flutter/material.dart';
import './widgets/custom_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Guide',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Column(
        children: [
          DefaultButtonWidgetFirst(
            textContent: "Hello world!",
          ),
          DefaultButtonWidgetSecond(
            textContentSecond: "Hello world 2!",
          ),
          DefaultButtonWidgetThird('Hello world 3!')
        ],
      ),
    );
  }
}

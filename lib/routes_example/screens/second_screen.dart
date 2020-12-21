import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = 'second-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second screen!"),
      ),
      body: Container(
        child: const Text("Hi!"),
      ),
    );
  }
}

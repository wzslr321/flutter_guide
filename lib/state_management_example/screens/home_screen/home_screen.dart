import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Container(
        child: Text("Hello"),
      ),
    );
  }
}

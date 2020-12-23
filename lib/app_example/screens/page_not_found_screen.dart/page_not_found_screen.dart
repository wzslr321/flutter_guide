import 'package:flutter/material.dart';

class PageNotFoundScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page not found"),
      ),
      body: Container(
        child: Text("Hello"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profile-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Text("Hello"),
      ),
    );
  }
}

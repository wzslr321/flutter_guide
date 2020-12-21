import 'package:flutter/material.dart';

class AchievementsScreen extends StatelessWidget {
  static const routeName = 'achievements-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Achievements"),
      ),
      body: Container(
        child: Text("Hello"),
      ),
    );
  }
}

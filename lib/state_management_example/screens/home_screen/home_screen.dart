import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../achievements_screen/achievements_screen.dart';
import '../profile_screen/profile_screen.dart';

import '../../providers/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    Counter _counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Column(
        children:[
          GestureDetector(
            onTap: _counter.incrementCounter,
            child: Text("Counter: ${_counter.value}"),
          ),
          ElevatedButton(
            child:Text("Check the result on profile screen"),
            onPressed:() {
              Navigator.of(context).pushNamed(ProfileScreen.routeName);
            },
          ),
          ElevatedButton(
            child:Text("Check the result on achievements screen"),
            onPressed:() {
              Navigator.of(context).pushNamed(AchievementsScreen.routeName);
            },
          )
        ]
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';

class AchievementsScreen extends StatelessWidget {
  static const routeName = 'achievements-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Achievements"),
      ),
      body: Container(
        child:Consumer<Counter>(
          builder: (_,counter,__){
            return Text("Money count is: ${counter.value}");
          },
        ),
      ),
    );
  }
}

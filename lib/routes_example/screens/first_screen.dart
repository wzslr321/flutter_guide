import 'package:flutter/material.dart';
import './second_screen.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = 'first-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("First screen"),
      ),
      body:Container(
        child: ElevatedButton(
          child: Text("Second screen"),
          onPressed:() {
            Navigator.of(context).pushNamed(SecondScreen.routeName);
          } ,
        ),
      ) ,
    );
  }
}

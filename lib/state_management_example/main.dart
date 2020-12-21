import 'package:flutter/material.dart';
import './screens/achievements_screen/achievements_screen.dart';
import './screens/home_screen/home_screen.dart';
import './screens/profile_screen/profile_screen.dart';
import './screens/page_not_found_screen.dart/page_not_found_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Guide',
      home:HomeScreen(),
      routes:{
        ProfileScreen.routeName:(ctx) => ProfileScreen(),
        AchievementsScreen.routeName:(ctx) => AchievementsScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => PageNotFoundScreen());
      },
    );
  }
}


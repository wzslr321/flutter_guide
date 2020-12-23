import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/task_history_screen/task_history_screen.dart';
import './screens/home_screen/home_screen.dart';
import './screens/profile_screen/profile_screen.dart';
import './screens/page_not_found_screen.dart/page_not_found_screen.dart';

import './providers/tasks_provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Tasks())
      ],
      child: MaterialApp(
        title: 'Flutter Guide',
        home:HomeScreen(),
        routes:{
          ProfileScreen.routeName:(ctx) => ProfileScreen(),
          TaskHistoryScreen.routeName:(ctx) => TaskHistoryScreen(),
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => PageNotFoundScreen());
        },
      ),
    );
  }
}


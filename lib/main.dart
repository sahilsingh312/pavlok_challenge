import 'package:flutter/material.dart';
import 'package:pavlok_challenge/constants/routes.dart';
import 'package:pavlok_challenge/screens/main_goal.dart';
import 'package:pavlok_challenge/screens/my_homepage.dart';
import 'package:pavlok_challenge/theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pavlok Challenge',
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        mainGoalRoute: (context) => const MainGoal(),
      },
      home: const MyHomePage(title: 'Pavlok Challenge'),
    );
  }
}


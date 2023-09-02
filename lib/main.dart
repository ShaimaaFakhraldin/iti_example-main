import 'package:flutter/material.dart';

import 'intro_screen.dart';
// widgets
// 1- one child
// multiple children

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ITI",
        debugShowCheckedModeBanner: false,
        locale: Locale("en"),
        home: IntroScreen(),
        routes: {},
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        themeMode: ThemeMode.dark);
  }
}

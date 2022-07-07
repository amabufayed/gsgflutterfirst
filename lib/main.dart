import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/NewsApp/Screens/main_screen.dart';


void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool isDark = false;
  changeTheme(bool value) {
    isDark = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: MainScreen(),
    );
  }
}
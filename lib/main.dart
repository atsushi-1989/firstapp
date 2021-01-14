import 'package:flutter/material.dart';
import 'package:my_first/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "はじめてのアプリ",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

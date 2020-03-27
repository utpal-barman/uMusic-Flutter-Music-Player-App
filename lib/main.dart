import 'package:flutter/material.dart';
import 'package:umusic_player/screens/AppScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'uMusic Player',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: AppScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screens/login_screen.dart';
import 'package:flutter_screens/starting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Practice",
      theme: ThemeData(colorScheme:
      ColorScheme.fromSeed(
          seedColor: Colors.greenAccent),
      ),
      home: ShowScreen(),
    );
  }
}
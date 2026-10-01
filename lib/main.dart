import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(const SpookyFindApp());
}

class SpookyFindApp extends StatelessWidget {
  const SpookyFindApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpookyFind',
      home: HomeScreen(),
    );
  }
}
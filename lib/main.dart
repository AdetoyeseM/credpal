import 'package:credpal_assessment/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Credpal Test',
      debugShowCheckedModeBanner: false,
      home: ShoppingScreen(),
    );
  }
}

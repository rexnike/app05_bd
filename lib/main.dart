import 'package:flutter/material.dart';
import 'package:app05_bd/Home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskBD App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

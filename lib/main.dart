import 'package:flutter/material.dart';
import 'package:threads_ui_clone/screens/homepage.dart';
import 'widgets/bottom_navbar.dart';
import 'package:threads_ui_clone/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(fontFamily: 'SF Pro'),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:threads_ui_clone/homepage.dart';
import 'bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SF Pro'),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

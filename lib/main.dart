import 'package:buttons_demo/buttons.dart';
import 'package:buttons_demo/home_screen.dart';
import 'package:buttons_demo/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons Demo',
      theme: buttonsDemoTheme,
      home: const HomeScreen(),
    );
  }
}

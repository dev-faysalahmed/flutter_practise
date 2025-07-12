import 'package:flutter/material.dart';
import 'package:my_skill/Flutter_Button.dart';
import 'package:my_skill/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: FButton(),
    );
  }
}

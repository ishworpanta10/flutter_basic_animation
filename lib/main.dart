import 'package:flutter/material.dart';
import 'package:flutter_animation_basic/sandBox.dart';
import 'package:flutter_animation_basic/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja Trips',
      home: SandBox(),
    );
  }
}

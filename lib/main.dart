import 'package:flutter/material.dart';
import 'package:project_one_week/screens/started.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Started(),
    );
  }
}

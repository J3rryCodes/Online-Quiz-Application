import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
  debugShowCheckedModeBanner: false,
  debugShowMaterialGrid: false,
    ));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext buildContext) {
    return QuizScreen();
  }
}
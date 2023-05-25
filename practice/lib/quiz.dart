
import 'package:flutter/material.dart';

import 'QuestionApp.dart';
import 'ShowScoreScreen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(b),
        body: QW()),
      routes: {"myScoreScreen": (context) => ShowScore()},
    );
  }
}

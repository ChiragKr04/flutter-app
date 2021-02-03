import 'package:flutter/material.dart';

import './question_answer.dart';
import './quiz.dart';
import './result.dart';

// Open emulator
// flutter emulator --launch Pixel_4_API_28 //cmd command

// Run flutter app
// flutter run .\lib\main.dart

void main() {
  runApp(MyApp());
}

// void run() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIdx = 0;
  var _answerIdx = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIdx = 0;
      _totalScore = 0;
    });
  }

  void _funPress(int score) {
    setState(() {
      print(questionMap.length);
      _totalScore += score;
      if (_questionIdx < questionMap.length + 1) {
        _answerIdx += 1;
        _questionIdx += 1;
      }
    });
    print(_questionIdx);
    print("Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Gotham'),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        // This is ternary example where changing UI with certain condition using ? and :
        body: _questionIdx < questionMap.length
            ? Quiz(
                _questionIdx,
                _funPress,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

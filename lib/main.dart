import 'package:flutter/material.dart';

import './answers.dart';
import './question_answer.dart';
import './questions.dart';

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

  void _funPress() {
    setState(() {
      if (_questionIdx == 2 || _answerIdx == 2) {
        _questionIdx = 2;
        _answerIdx = 2;
      } else {
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
        body: Column(
          children: [
            Questions(
              questionMap[_questionIdx]["question"],
            ),
            ...(questionMap[_questionIdx]["answers"] as List<String>)
                .map((answers) {
              return Answer(_funPress, answers);
            }).toList(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './answers.dart';
import './question_answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final int _questionIdx;
  final Function _funPress;

  Quiz(this._questionIdx, this._funPress);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questionMap[_questionIdx]["question"],
        ),
        ...(questionMap[_questionIdx]["answers"] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(() => _funPress(answers["score"]), answers["text"]);
        }).toList(),
      ],
    );
  }
}

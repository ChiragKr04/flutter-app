import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _finalScore;
  final Function _resetQuiz;
  Result(this._finalScore, this._resetQuiz);
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "You Completed The Quiz " + "Score = $_finalScore",
          ),
          RaisedButton(
            color: Colors.pink,
            textColor: Color(0xffFFFFFF),
            child: Text(
              "Play Again!",
            ),
            onPressed: _resetQuiz,
          )
        ],
      ),
    );
  }
}

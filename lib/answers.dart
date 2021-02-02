import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function changeQuestion;
  final String answerText;
  Answer(this.changeQuestion, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      height: 50,
      child: RaisedButton(
        color: Colors.orangeAccent,
        textColor: Color(0xffFFFFFF),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 19,
          ),
        ),
        onPressed: changeQuestion,
      ),
    );
  }
}

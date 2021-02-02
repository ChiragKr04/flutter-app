import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15.0, bottom: 5.0),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 24,
          color: Colors.greenAccent,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

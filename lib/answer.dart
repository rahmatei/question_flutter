import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function() callbackAnswerQuestion;
  //final VoidCallback callbackAnswerQuestion;
  final String answer;
  Answers({required this.answer, required this.callbackAnswerQuestion});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: callbackAnswerQuestion,
        child: Text(answer),
      ),
    );
  }
}

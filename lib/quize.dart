import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quize extends StatelessWidget {
  final Function callBackAnswerQuestion;
  final String question;
  final Object? answers;

  Quize(
      {required this.question,
      required this.answers,
      required this.callBackAnswerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question: question),
        ...(answers as List<Map<String, Object>>)
            .map((answer) => Answers(
                callbackAnswerQuestion: () => callBackAnswerQuestion(
                    int.parse(answer['sccor'].toString())),
                answer: answer['title'].toString()))
            .toList(),
      ],
    );
  }
}

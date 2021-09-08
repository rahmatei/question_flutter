import 'package:app/answer.dart';
import 'package:app/question.dart';
import 'package:app/result.dart';
import 'package:flutter/material.dart';
import 'quize.dart';

void main() => (runApp(MyApp1()));

class MyApp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp1State();
  }
}

class _MyApp1State extends State<MyApp1> {
  var _question = [
    {
      "question": "eat Fav?",
      "answer": [
        {"title": "pizza", "sccor": 10},
        {"title": "water", "sccor": 50},
        {"title": "oil", "sccor": 5},
      ]
    },
    {
      "question": "Color Fav?",
      "answer": [
        {"title": "Blue", "sccor": 60},
        {"title": "red", "sccor": 20},
        {"title": "green", "sccor": 70},
      ]
    }
  ];
  int _current = 0;
  int _sccore = 0;

  void answerQuestion(int sccor) {
    setState(() {
      _current = _current + 1;
      _sccore += sccor;
    });
    //_sccor += int.parse(scoor.toString());
  }

  void callBackResult() {
    setState(() {
      _current = 0;
      _sccore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Question'),
          ),
          body: Center(
              child: _current < _question.length
                  ? Quize(
                      question: _question[_current]['question'].toString(),
                      answers: _question[_current]['answer'],
                      callBackAnswerQuestion: answerQuestion)
                  : Result(
                      callBackResult: callBackResult,
                      sccore: _sccore,
                    ))),
    );
  }
}

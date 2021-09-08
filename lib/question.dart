import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question({required this.question});
  final String question;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        question,
        style: TextStyle(
          fontSize: 27,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

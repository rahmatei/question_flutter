import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() callBackResult;
  final int sccore;
  Result({required this.callBackResult, required this.sccore});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Finish'),
        Text('Sccor:${sccore.toString()}'),
        OutlinedButton(
          child: Text('Again'),
          onPressed: callBackResult,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(Function this.selectHandler, String this.answerText);

  Widget build(BuildContext ctx) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: this.selectHandler,
        child: Text(this.answerText),
      ),
    );
  }
}

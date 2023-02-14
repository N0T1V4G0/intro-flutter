import 'package:flutter/material.dart';
import 'package:intro_flutter/answer.dart';
import 'package:intro_flutter/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'questionAnswers': ['Blue', 'Black', 'Green', 'Red'],
    },
    {
      'questionText': 'What\'s your pet name?',
      'questionAnswers': ['Cat', 'Dog', 'Derp', 'Simp'],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'questionAnswers': ['Chinese', 'Pizza', 'Ice Cream', 'Donnuts'],
    },
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print('Question answered');
  }

  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhateverQuizz'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['questionAnswers'] as List).map((q) {
              return Answer(this.answerQuestion, q);
            }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
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
  var _questions = ['What\'s your favorite color?', 'What\'s your pet name?'];

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
          title: Text('Whatever'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            ElevatedButton(
              child: Text('Button 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Button 2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Button 3'),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = ['What\'s your favorite color?', 'What\'s your pet name?'];

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
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
            Text(questions[questionIndex]),
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

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var question = [
    'What\'s your favorite color',
    'what\'s your favorite animal'
  ];

  void answerQuestions() {
    setState(() {
      questionIndex += 1;
      print(questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(question
                .elementAt(questionIndex)), // or question[questionIndex]
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestions),
            RaisedButton(
                child: Text('Answer 2'), onPressed: () => print('selected 2')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('selected 3');
                }),
          ],
        ),
      ),
    );
  }
}

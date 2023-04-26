import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Whats your favorite football team?',
      'answers': [
        {'text': 'Liverpool', 'score': 10},
        {'text': 'Manchester City', 'score': 7},
        {'text': 'Bayern Munich', 'score': 5},
        {'text': 'Real Madrid', 'score': 3},
      ]
    },
    {
      'questionText': 'Whats your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Green', 'score': 5},
        {'text': 'Yellow', 'score': 3},
      ],
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 0},
        {'text': 'Rabbit', 'score': 7},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Snake', 'score': 5},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

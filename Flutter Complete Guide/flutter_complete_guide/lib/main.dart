// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';

void main() => runApp(const _MyApp());

class _MyApp extends StatefulWidget {
  const _MyApp();

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  final _questions = const [
    {
      'questionText': 'Whats your favorite football team?',
      'answers': [
        {'text': 'Liverpool', 'score': 10},
        {'text': 'Manchester City', 'score': 07},
        {'text': 'Bayern Munich', 'score': 05},
        {'text': 'Real Madrid', 'score': 03},
      ]
    },
    {
      'questionText': 'Whats your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 08},
        {'text': 'Green', 'score': 05},
        {'text': 'Yellow', 'score': 03},
      ],
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Rabbit', 'score': 07},
        {'text': 'Elephant', 'score': 06},
        {'text': 'Snake', 'score': 05},
      ],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more Questions!');
    } else {
      print('No more Questions! ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('My First App')),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : const Result(),
      ),
    );
  }
}

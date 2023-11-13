import 'package:flutter/material.dart';
import 'package:second_project/data/questions.dart';
import 'package:second_project/questinons_screen.dart';
import 'package:second_project/start_screen.dart';
import 'package:second_project/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widget? activeScreen;
  List<String> selectedAnswers = [];
  var activeScreen = 'start_Screen';
  //@override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question_Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result_Screen';
        //selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'start_Screen'
    //     ? StartScreen(switchScreen)
    //     : QuestionsScreen(onSelectAnswer: chooseAnswer);
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question_Screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == 'result_Screen') {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswers);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

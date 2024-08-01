import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

// * Customs imported widgets.
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  // * If we keep this final variable to a list we break out logic later because we never empty the list when we start the app over.
  // final List<String> selectedAnswers = [];
  // * If we take out the final keyword the list will not continue to grow when we start the app over.
  List<String> selectedAnswers = [];

  // * Alternative method of displaying the screen
  var activeScreen = 'start-screen';

  // @override
  // initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  // * Alternative method of displaying the screen
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // * if we choose to eliminate the final keyword from the list we need to clear the list here.
        selectedAnswers = [];
        // here we are resetting the set state of active screen to the start screen when our answers length we stored matches our questions length.
        activeScreen = 'results-screen';
        // * We need this to clear the list of selected answers when we start the quiz over or we break this logic on the second run through the quiz if we keep the final keyword in the selectedAnswers method above this code in line 22.
        // selectedAnswers.clear();
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.purple],
            ),
          ),
          // child: activeScreen,
          // * alternative method of displaying the screen
          child: screenWidget,
        ),
      ),
    );
  }
}

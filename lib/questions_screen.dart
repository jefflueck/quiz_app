import 'package:flutter/material.dart';

import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestions = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestions.text,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            // * Because we chose to use named arguments in the AnswerButton widget, we must add the required answerText in front of the arguments in this implementation.
            answerText: currentQuestions.answers[0],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentQuestions.answers[1],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentQuestions.answers[2],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentQuestions.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

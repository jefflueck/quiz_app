import 'package:flutter/material.dart';

import 'package:quiz_app/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The Question',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            // * Because we chose to use named arguments in the AnswerButton widget, we must add the required answerText in front of the arguments in this implementation.
            answerText: 'Answer 1',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer 2',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer 3',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer 4',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

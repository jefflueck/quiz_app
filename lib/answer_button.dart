import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      // * we could also have these as positional arguments verses named arguments if we choose. ex (this.answerText, this.onTap, {super.key} ) In this example the first two are now positional arguments and would also work in this widget.
      // ! If we choose to use the named arguments we must also use the {} to wrap the arguments, and must add the required front of the arguments in this implementation.
      {required this.answerText,
      required this.onTap,
      super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}

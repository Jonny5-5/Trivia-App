import 'package:flutter/material.dart';

class QuestionAnswers extends StatefulWidget {
  final List<String> options;
  final Function(String) onClick;

  /// The list of
  const QuestionAnswers({
    super.key,
    required this.options,
    required this.onClick,
  });

  @override
  State<QuestionAnswers> createState() => QuestionAnswersState();
}

class QuestionAnswersState extends State<QuestionAnswers> {
  @override
  Widget build(Object context) {
    /// Makes a button that will send the string value of the question
    /// back up to the Trivia object
    ElevatedButton makeButton(String text) {
      return ElevatedButton(
        onPressed: () {
          widget.onClick(text);
        },
        child: Text(text),
      );
    }

    List<ElevatedButton> buttons = [];
    for (String option in widget.options) {
      buttons.add(makeButton(option));
    }
    // Shuffle the list so the questions are randomized
    buttons.shuffle();

    return Column(
      children: buttons,
    );
  }
}

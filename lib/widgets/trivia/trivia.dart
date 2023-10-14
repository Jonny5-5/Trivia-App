import 'package:flutter/material.dart';
import 'package:trivia_app/data/trivia_q.dart';
import 'package:trivia_app/vars/globals.dart';
import 'package:trivia_app/widgets/trivia/question_answers.dart';
import 'package:trivia_app/widgets/trivia/question_box.dart';

class Trivia extends StatefulWidget {
  final Q question;
  final List<String> answers;
  final Function(String) onAnswer;
  final bool showOptions;

  /// [question] is the [Q] object containing the necessary information
  ///
  /// if [showOptions] is false, then the set [answers] to only the correct ans
  const Trivia({
    super.key,
    required this.question,
    required this.answers,
    required this.onAnswer,
    required this.showOptions,
  });

  @override
  State<Trivia> createState() => TriviaState();
}

class TriviaState extends State<Trivia> {
  @override
  Widget build(Object context) {
    return Column(
      children: [
        QuestionBox(question: widget.question.question),
        const SizedBox(height: DEFALT_PADDING_SIZE * 3),
        if (widget.showOptions)
          QuestionAnswers(
            options: widget.answers,
            onClick: widget.onAnswer,
          ),
      ],
    );
  }
}

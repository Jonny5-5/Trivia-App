import 'package:flutter/material.dart';
import 'package:trivia_app/data/trivia_q.dart';
import 'package:trivia_app/vars/globals.dart';
import 'package:trivia_app/widgets/trivia/question_answers.dart';
import 'package:trivia_app/widgets/trivia/question_box.dart';

class Trivia extends StatefulWidget {
  final Q question;
  final List<String> answers;
  final Function(String) onAnswer;

  /// [question] is the [Q] object containing the necessary information
  const Trivia({
    super.key,
    required this.question,
    required this.answers,
    required this.onAnswer,
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
        QuestionAnswers(
          options: widget.answers,
          onClick: widget.onAnswer,
        ),
      ],
    );
  }
}

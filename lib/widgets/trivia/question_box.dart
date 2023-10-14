import 'package:flutter/material.dart';

class QuestionBox extends StatefulWidget {
  final String? question;

  /// The question that will be shown
  const QuestionBox({
    super.key,
    required this.question,
  });

  @override
  State<QuestionBox> createState() => QuestionBoxState();
}

class QuestionBoxState extends State<QuestionBox> {
  @override
  Widget build(Object context) {
    return Text(
      widget.question ?? "Null",
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}

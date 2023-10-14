import 'package:flutter/material.dart';
import 'package:trivia_app/data/trivia_q.dart';
import 'package:trivia_app/widgets/scaffold_container.dart';
import 'package:trivia_app/widgets/trivia/trivia.dart';

class MultiPlayerScreen extends StatefulWidget {
  const MultiPlayerScreen({super.key});

  @override
  State<MultiPlayerScreen> createState() => MultiPlayerScreenState();
}

class MultiPlayerScreenState extends State<MultiPlayerScreen> {
  Questions questions = Questions();
  Q q = Questions().getQuestion();

  /// Refreshes the question
  void refresh() {
    q = questions.getQuestion();
    setState(() {});
  }

  /// This is called when the user clicks on an answer
  void onAnswer(String answer) {
    if (answer == q.correctAnswer) {
      debugPrint("You got the answer right");
    } else {
      debugPrint("Wrong answer");
    }
    refresh();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffoldContainerBackground(
      showAppBar: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(),
          Trivia(
            question: q,
            answers: [q.correctAnswer!],
            showOptions: false,
            onAnswer: onAnswer,
          ),
          const Spacer(flex: 10),
          ElevatedButton(
            onPressed: refresh,
            child: Text("refresh"),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

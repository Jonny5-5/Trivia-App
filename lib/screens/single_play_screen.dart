import 'package:flutter/material.dart';
import 'package:trivia_app/data/trivia_q.dart';
import 'package:trivia_app/vars/globals.dart';
import 'package:trivia_app/widgets/scaffold_container.dart';
import 'package:trivia_app/widgets/trivia/popup.dart';
import 'package:trivia_app/widgets/trivia/trivia.dart';

class SinglePlayScreen extends StatefulWidget {
  const SinglePlayScreen({super.key});

  @override
  State<SinglePlayScreen> createState() => SinglePlayScreenState();
}

class SinglePlayScreenState extends State<SinglePlayScreen> {
  Questions questions = Questions();
  Q q = Questions().getQuestion();

  /// Refreshes the question
  void refresh() {
    q = questions.getQuestion();
    setState(() {});
  }

  /// This is called when the user clicks on an answer
  void onAnswer(String answer) async {
    bool correct = answer == q.correctAnswer;
    if (correct) {
      debugPrint("You got the answer right");
    } else {
      debugPrint("Wrong answer");
    }
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Popup(correct);
      },
    );
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
            answers: [q.correctAnswer!, ...q.incorrectAnswers!],
            onAnswer: onAnswer,
            showOptions: true,
          ),
          const Spacer(flex: 10),
          ElevatedButton(
            onPressed: refresh,
            child: const Text("refresh"),
          ),
          const SizedBox(height: DEFAULT_PADDING_SIZE * 3),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trivia_app/data/trivia_q.dart';
import 'package:trivia_app/vars/globals.dart';
import 'package:trivia_app/widgets/scaffold_container.dart';
import 'package:trivia_app/widgets/trivia/popup.dart';
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
  void onAnswer(String answer) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Popup(
          true,
          q.correctAnswer!,
          showImage: false,
        );
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: DEFAULT_PADDING_SIZE * 2,
            ),
            child: Trivia(
              question: q,
              answers: [q.correctAnswer!],
              showOptions: false,
              // TODO: I don't need this since showOptions is false
              onAnswer: onAnswer,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              onAnswer("answer");
            },
            child: Text("Show Answer"),
          ),
          const Spacer(
            flex: 10,
          ),
        ],
      ),
    );
  }
}

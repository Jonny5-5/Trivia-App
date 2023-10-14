import 'package:flutter/material.dart';
import 'package:trivia_app/vars/globals.dart';

class Popup extends StatelessWidget {
  final bool isCorrect;

  /// [isCorrect] is true to show a positive popup
  /// false to show a negative one.
  const Popup(this.isCorrect, {super.key});

  @override
  Widget build(BuildContext context) {
    // The 'correct' one
    if (isCorrect) {
      return GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: const EdgeInsets.all(DEFAULT_PADDING_SIZE * 5),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(16))),
            child: Icon(Icons.check),
          ),
        ),
      );
    }

    // Otherwise, return the 'wrong' one
    return AlertDialog(
      title: const Text('Wrong'),
      content: const Text('You got the wrong answer.'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}

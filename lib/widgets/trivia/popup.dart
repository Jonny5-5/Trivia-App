import 'package:flutter/material.dart';
import 'package:trivia_app/vars/globals.dart';

class Popup extends StatelessWidget {
  final bool isCorrect;
  final bool showImage;
  final String correctAns;

  /// [isCorrect] is true to show a positive popup
  /// false to show a negative one.
  const Popup(
    this.isCorrect,
    this.correctAns, {
    super.key,
    this.showImage = true,
  });

  // TODO: Make this not duplicated code
  // TODO: Have it show the question
  @override
  Widget build(BuildContext context) {
    // The 'correct' one
    if (isCorrect) {
      return Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: DEFAULT_PADDING_SIZE * 5,
              vertical: DEFAULT_PADDING_SIZE * 20,
            ),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(24)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (showImage) Image.asset("assets/images/Correct.png"),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: DEFAULT_PADDING_SIZE),
                    child: Text(
                      "Correct answer was:",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Text(
                    '"$correctAns"',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    // Otherwise, return the 'wrong' one
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: DEFAULT_PADDING_SIZE * 5,
            vertical: DEFAULT_PADDING_SIZE * 20,
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(24))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (showImage) Image.asset("assets/images/Incorrect.png"),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: DEFAULT_PADDING_SIZE),
                  child: Text(
                    "Correct answer was:",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Text(
                  '"$correctAns"',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trivia_app/data/trivia_q.dart';
import 'package:trivia_app/vars/globals.dart';
import 'package:trivia_app/widgets/scaffold_container.dart';

enum Difficulty { easy, medium, hard, all }

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  bool soundOn = true;
  Difficulty currentDifficulty = Difficulty.all;

  /// Move the difficulty to the next step
  void moveToNextDifficulty() {
    int nextIndex = (currentDifficulty.index + 1) % Difficulty.values.length;
    currentDifficulty = Difficulty.values[nextIndex];

    // Update the difficulty in the Singleton
    Questions().difficulty = currentDifficulty;

    // Refresh the page
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffoldContainerBackground(
        showAppBar: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: soundOn ? Colors.green : Colors.red),
              onPressed: () {
                setState(() {
                  soundOn = !soundOn;
                });
              },
              child: const Text("Sounds"),
            ),
            SizedBox(height:DEFALT_PADDING_SIZE*2),
            ElevatedButton(
              onPressed: moveToNextDifficulty,
              child: const Text("Difficulty"),
            ),
            SizedBox(height:DEFALT_PADDING_SIZE*2),
            Text(
                'Current difficulty is ${currentDifficulty.toString().split('.').last}',
                style: TextStyle(fontSize: 10)
                ),
                SizedBox(height:DEFALT_PADDING_SIZE*2)
          ],
        ));
  }
}

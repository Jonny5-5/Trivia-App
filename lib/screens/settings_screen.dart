import 'package:flutter/material.dart';
import 'package:trivia_app/widgets/scaffold_container.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => SettingsScreenState();
}

enum difficulty {
  easy, medium, hard, all
}


class SettingsScreenState extends State<SettingsScreen> {
  bool soundOn = true;
  difficulty currentDifficulty = difficulty.all;
  void moveToNextDifficulty() {
  int nextIndex = (currentDifficulty.index + 1) % difficulty.values.length;
  currentDifficulty = difficulty.values[nextIndex];
  setState(() {
  
  });
}
  @override
  Widget build(BuildContext context) {
    return MyScaffoldContainerBackground(
      showAppBar: true,
      child:Column(
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
          ElevatedButton(
            onPressed: moveToNextDifficulty,
            child: const Text("Difficulty"),
          ),
          Text(
            'Current difficulty is ${currentDifficulty.toString().split('.').last}',
            style: TextStyle(fontSize: 20)
            )
        ],
      )

    );
  }
}

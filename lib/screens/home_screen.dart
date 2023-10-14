import 'package:flutter/material.dart';
import 'package:trivia_app/screens/multiplayer_screen.dart';
import 'package:trivia_app/screens/single_play_screen.dart';
import 'package:trivia_app/widgets/scaffold_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  /// Go to the Single Player Screen
  void onPressedSingle() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SinglePlayScreen()),
    );
  }

  /// Go to the Multi Player Screen
  void onPressedMulti() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MultiPlayerScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffoldContainerBackground(
      showAppBar: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: onPressedSingle,
            child: const Text("Single Player"),
          ),
          ElevatedButton(
            onPressed: onPressedMulti,
            child: const Text("Multi Player"),
          ),
        ],
      ),
    );
  }
}

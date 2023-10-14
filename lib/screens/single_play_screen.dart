import 'package:flutter/material.dart';
import 'package:trivia_app/widgets/scaffold_container.dart';

class SinglePlayScreen extends StatefulWidget {
  const SinglePlayScreen({super.key});

  @override
  State<SinglePlayScreen> createState() => SinglePlayScreenState();
}

class SinglePlayScreenState extends State<SinglePlayScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffoldContainerBackground(
      child: Text("Single-Player Page"),
    );
  }
}

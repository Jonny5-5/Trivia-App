import 'package:flutter/material.dart';
import 'package:trivia_app/widgets/scaffold_container.dart';

class MultiPlayerScreen extends StatefulWidget {
  const MultiPlayerScreen({super.key});

  @override
  State<MultiPlayerScreen> createState() => MultiPlayerScreenState();
}

class MultiPlayerScreenState extends State<MultiPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffoldContainerBackground(
      child: Text("Multi-Player Page"),
    );
  }
}

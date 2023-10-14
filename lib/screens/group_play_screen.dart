import 'package:flutter/material.dart';
import 'package:trivia_app/widgets/scaffold_container.dart';

class GroupPlayScreen extends StatefulWidget {
  const GroupPlayScreen({super.key});

  @override
  State<GroupPlayScreen> createState() => GroupPlayScreenState();
}

class GroupPlayScreenState extends State<GroupPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffoldContainerBackground(
      child: Text("Multi-Player Page"),
    );
  }
}

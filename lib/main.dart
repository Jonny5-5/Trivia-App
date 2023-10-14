import 'package:flutter/material.dart';
import 'package:trivia_app/screens/splash_screen.dart';
import 'package:trivia_app/vars/colors.dart';
import 'package:trivia_app/vars/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: MINT_GREEN),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

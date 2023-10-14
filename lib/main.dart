import 'package:flutter/material.dart';
import 'package:trivia_app/screens/splash_screen.dart';
import 'package:trivia_app/vars/strings.dart';
import 'package:trivia_app/vars/theme.dart';

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
      theme: MyTheme.themeDataLight,
      darkTheme: MyTheme.themeDataDark,
      home: const SplashScreen(),
    );
  }
}

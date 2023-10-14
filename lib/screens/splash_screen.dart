import 'package:flutter/material.dart';
import 'package:trivia_app/screens/home_screen.dart';
import 'package:trivia_app/vars/globals.dart';
import 'package:trivia_app/vars/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  // I'm thinking that for this splash screen, we should have a
  // throbbing mint green color in the background that slowly makes it's way
  // around the screen.
  bool zoomIn = true;
  void switchScreenOnWait() {
    Future.delayed(const Duration(seconds: SPLASH_SCREEN_TIMER)).then(
      (value) => {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        )
      },
    );
  }

  @override
  void initState() {
    super.initState();
    switchScreenOnWait();
    // make the zoom in/out happen
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        zoomIn = !zoomIn;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            WELCOME_MESSAGE,
          ),
          const SizedBox(height: DEFALT_PADDING_SIZE),
          AnimatedScale(
            scale: zoomIn ? 1.1 : 1,
            duration: Duration(milliseconds: zoomIn ? 1000 : 300),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                "assets/images/icon.png",
                height: 130,
                width: 130,
              ),
            ),
            onEnd: () {
              setState(() {
                zoomIn = !zoomIn;
              });
            },
          ),
        ],
      ),
    );
  }
}

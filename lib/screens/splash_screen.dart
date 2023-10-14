import 'package:flutter/material.dart';
import 'package:trivia_app/data/trivia_q.dart';
import 'package:trivia_app/screens/home_screen.dart';
import 'package:trivia_app/vars/globals.dart';
import 'package:trivia_app/vars/strings.dart';
import 'package:trivia_app/widgets/scaffold_container.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
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

  Future<void> loadSingletons() async {
    // Load the Trivia Questions
    Questions qs = Questions();
    qs.load();
  }

  @override
  void initState() {
    super.initState();
    loadSingletons();
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
    return MyScaffoldContainerBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            WELCOME_MESSAGE,
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(height: DEFAULT_PADDING_SIZE * 10),
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

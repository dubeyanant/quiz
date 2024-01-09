import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[500],
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset("assets/images/quiz-logo.png", width: 300),
          const SizedBox(height: 30),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 40),
          const TextButton(
            onPressed: null,
            child: Text(
              "Start Quiz",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered X out of Y answers correctly."),
            SizedBox(height: 30),
            Text("List of answers and question..."),
            SizedBox(height: 30),
            TextButton(
              onPressed: null,
              child: Text("Restart Quiz!"),
            ),
          ],
        ),
      ),
    );
  }
}

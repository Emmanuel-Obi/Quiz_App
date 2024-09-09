import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 280),
          const SizedBox(height: 70),
          const StyledText("Learn Flutter The Fun Way!"),
          const SizedBox(height: 40),
          const ElevatedButton(
              onPressed: null,
              child: Text(
                "Start Quiz",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

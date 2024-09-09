import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 280,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 70),
          const StyledText("Learn Flutter The Fun Way!"),
          const SizedBox(height: 40),
          ElevatedButton.icon(
              onPressed: startQuiz,
              style:ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
              label: const Text(
                "Start Quiz",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

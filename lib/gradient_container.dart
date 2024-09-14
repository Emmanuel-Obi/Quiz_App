import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});
  
  @override
  State<GradientContainer> createState() {
    return _GradientContainerState();
  }
}

class _GradientContainerState extends State<GradientContainer> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
                Color.fromARGB(255, 44, 6, 108),
                Color.fromARGB(255, 92, 27, 203),
              ], begin: startAlignment, end: endAlignment),
      ),
      child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen(),
    );
  }
  
}
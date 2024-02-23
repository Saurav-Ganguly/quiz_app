import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(
    this.switchScreen, {
    super.key,
  });

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(151, 255, 255, 255),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          onPressed: switchScreen,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            "Start Quiz",
          ),
        ),
      ],
    );
  }
}

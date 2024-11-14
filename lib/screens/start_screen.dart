import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onStart;

  const StartScreen({super.key, required this.onStart});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 30),
          const Text(
            "Let's see how much of an enthusiast you are...",
            textAlign: TextAlign.center,
            textScaler: TextScaler.linear(1.3),
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
            ),
          ),
          const SizedBox(height: 25),
          OutlinedButton.icon(
            onPressed: onStart,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurple,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start the quiz!',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
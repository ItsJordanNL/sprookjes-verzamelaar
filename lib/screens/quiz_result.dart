import "package:flutter/material.dart";


class QuizAnswer extends StatefulWidget {
  final String status; // Definieer het vereiste veld status

  const QuizAnswer({Key? key, required this.status})
      : super(key: key); // Initialiseer het vereiste veld

  @override
  State<QuizAnswer> createState() => _QuizAnswerState();
}

class _QuizAnswerState extends State<QuizAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(widget
                .status), // Gebruik widget.status om toegang te krijgen tot het statusveld
          ],
        ),
      ),
    );
  }
}

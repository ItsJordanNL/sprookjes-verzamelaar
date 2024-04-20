import 'package:flutter/material.dart';
import 'package:sprookjesverzamelaar/components/constants.dart';
import 'package:sprookjesverzamelaar/screens/home.dart';

class QuizAnswer extends StatefulWidget {
  final String status;

  const QuizAnswer({super.key, required this.status});

  @override
  State<QuizAnswer> createState() => _QuizAnswerState();
}

class _QuizAnswerState extends State<QuizAnswer> {
  String getFeedbackText() {
    if (widget.status == "Correct!") {
      return "Goed gedaan! Je hebt het juiste antwoord gekozen!";
    } else {
      return "Helaas.. je hebt niet het juiste antwoord gekozen.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.status,
                style: const TextStyle(
                  fontSize: 28,
                  color: textcolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                getFeedbackText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: textcolor,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  color: const Color.fromARGB(90, 33, 149, 243),
                  child: const Padding(
                    padding:  EdgeInsets.all(12.0),
                    child:  Text(
                      '+100 Dukaten',
                      style: TextStyle(color: textcolor),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Home()), // Verzameling is de naam van de bestemmingspagina
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: lightblue,
                ),
                child: const Text(
                  'Terug naar verzameling',
                  style: TextStyle(fontSize: 16, color: textcolor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";
import "package:sprookjesverzamelaar/components/constants.dart";
import "package:sprookjesverzamelaar/screens/home.dart";
import "package:sprookjesverzamelaar/screens/verhaal.dart";
import "package:sprookjesverzamelaar/screens/verzameling.dart";
import '../components/sprookjes.dart';

class QuizVerhaal extends StatefulWidget {
  QuizVerhaal({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  State<QuizVerhaal> createState() => _QuizVerhaalState();
}

class _QuizVerhaalState extends State<QuizVerhaal> {
  @override
  Widget build(BuildContext context) {
    final sprookje = Sprookjes.getSprookje()[widget.selectedIndex];

    return Scaffold(
      body: Container(
        decoration: _backgroundImage(),
        child: SafeArea(
          child: Column(
            children: [
              _imageSection(sprookje),
              _questionText(sprookje),
              const SizedBox(
                height: 40,
              ),
              _answersColumn(context, sprookje)
            ],
          ),
        ),
      ),
    );
  }

  Column _answersColumn(BuildContext context, Sprookjes sprookje) {
    return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    // Plaats hier de navigatiecode naar de gewenste pagina
                    // Bijvoorbeeld:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Container(
                    constraints: const BoxConstraints(
                      minWidth: 350,
                      maxWidth: 350,
                      minHeight: 50,
                    ),
                    decoration: BoxDecoration(
                      color:
                          primary, // Stel hier de gewenste achtergrondkleur in
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        sprookje.answers[0], // Gebruik hier de gewenste tekst
                        textAlign: TextAlign.center, //
                        style:
                            const TextStyle(fontSize: 24, color: textcolor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    // Plaats hier de navigatiecode naar de gewenste pagina
                    // Bijvoorbeeld:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Container(
                    constraints: const BoxConstraints(
                      minWidth: 350,
                      maxWidth: 350,
                      minHeight: 50,
                    ),
                    decoration: BoxDecoration(
                      color:
                          primary, // Stel hier de gewenste achtergrondkleur in
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        sprookje.answers[1], // Gebruik hier de gewenste tekst
                        textAlign: TextAlign.center, //
                        style:
                            const TextStyle(fontSize: 24, color: textcolor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    // Plaats hier de navigatiecode naar de gewenste pagina
                    // Bijvoorbeeld:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Container(
                    constraints: const BoxConstraints(
                      minWidth: 350,
                      maxWidth: 350,
                      minHeight: 50,
                    ),
                    decoration: BoxDecoration(
                      color:
                          primary, // Stel hier de gewenste achtergrondkleur in
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        sprookje.answers[2], // Gebruik hier de gewenste tekst
                        textAlign: TextAlign.center, //
                        style:
                            const TextStyle(fontSize: 24, color: textcolor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    // Plaats hier de navigatiecode naar de gewenste pagina
                    // Bijvoorbeeld:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Container(
                    constraints: const BoxConstraints(
                      minWidth: 350,
                      maxWidth: 350,
                      minHeight: 50,
                    ),
                    decoration: BoxDecoration(
                      color:
                          primary, // Stel hier de gewenste achtergrondkleur in
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        sprookje.answers[3], // Gebruik hier de gewenste tekst
                        textAlign: TextAlign.center, //
                        style:
                            const TextStyle(fontSize: 24, color: textcolor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            );
  }

  Container _questionText(Sprookjes sprookje) {
    return Container(
      padding: const EdgeInsets.all(10), // Voeg de gewenste padding toe
      constraints: const BoxConstraints(
          minWidth: 350,
          maxWidth: 350,
          maxHeight: 350), // Stel de maximale breedte in
      decoration: BoxDecoration(
        color: Colors.white, // Stel de achtergrondkleur in op wit
        borderRadius: BorderRadius.circular(
            10), // Pas de gewenste waarde voor de afronding aan
      ),
      child: Text(
        sprookje.question,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 28, color: primary),
      ),
    );
  }

  BoxDecoration _backgroundImage() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
            'assets/images/quiz6.jpg'), // Vervang 'background.jpg' met de naam van je afbeelding
        fit: BoxFit.cover,
      ),
    );
  }
}

Padding _imageSection(Sprookjes sprookje) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.asset(
        sprookje.image,
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
      ),
    ),
  );
}

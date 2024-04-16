import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import 'introductie.dart';
import '../components/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pair Twinkeltoorts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PairingPage(),
    );
  }
}

class PairingPage extends StatefulWidget {
  const PairingPage({super.key});

  @override
  PairingPageState createState() => PairingPageState();
}

class PairingPageState extends State<PairingPage> {
  bool showButton = false;
  String displayText =
      'Houd de Twinkeltoorts tegen uw telefoon om hem te verbinden...';

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        showButton = true;
        displayText =
            'De twinkeltoorts is succesvol verbonden! Klik hieronder op start'; // Change text after delay

        // Tril de telefoon voor 1 seconde
        Vibration.vibrate(duration: 1000);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/stars.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 95,
                        backgroundColor: showButton
                            ? const Color.fromARGB(255, 1, 155, 85)
                            : Colors.transparent,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 85,
                              backgroundImage:
                                  AssetImage('assets/images/twinkeltoorts.jpg'),
                            ),
                            Positioned.fill(
                              child: Visibility(
                                visible: !showButton,
                                child: const CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromARGB(255, 5, 160, 185)),
                                  strokeWidth: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Text(
                      displayText, // Use the displayText variable
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 25, color: textcolor),
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
          if (showButton)
            Positioned(
              left: 0,
              right: 0,
              bottom: 80,
              child: Container(
                color: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 105),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OnBoardingPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightblue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.only(top: 5, bottom: 2),
                  ),
                  child: const Text(
                    'Start',
                    style: TextStyle(
                        fontSize: 32,
                        color: textcolor,
                        fontFamily: 'Pretaporter Slab'),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'home.dart';
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

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        showButton = true;
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
                fit: BoxFit.cover, // Cover the entire container
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
                        radius: 90, // Adjust the size as needed
                        backgroundColor: showButton
                            ? const Color.fromARGB(255, 1, 155, 85)
                            : Colors.transparent,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 85,
                              backgroundImage: AssetImage(
                                  'assets/images/qr_code.jpg'), // Add your image asset path
                            ),
                            Positioned.fill(
                              child: Visibility(
                                visible: !showButton,
                                child: const CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromARGB(255, 5, 160, 185)),
                                  strokeWidth:
                                      10, // Customize the thickness of the loading animation
                                ), // Circular loading animation
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0), // Reduced padding here
                    child: Text(
                      'Houd de Twinkeltoorts tegen uw telefoon om hem te verbinden...',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: textcolor),
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
                color: Colors.transparent, // Match with background
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightblue, // Set background color to light blue
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Set border radius to 5
                    ),
                    padding: const EdgeInsets.all(15), // Increase padding to make button bigger
                  ),
                  child: const Text(
                    'Start',
                    style: TextStyle(fontSize: 30, color: textcolor, fontFamily: 'Pretaporter Slab'),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

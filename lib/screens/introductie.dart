import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sprookjesverzamelaar/screens/start.dart';
import '../components/constants.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => PairingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: textcolor,
      allowImplicitScrolling: true,
      pages: [
        PageViewModel(
          title: "Ontdek het Sprookjesbos",
          body: 'Welkom in het Sprookjesbos',
          image: Container(
            padding: const EdgeInsets.only(top: 150),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  100), // Aangepaste waarde voor de mate van afgeronde hoeken
              child: Image.asset(
                'assets/images/qr_code.jpg',
                height: 200,
              ),
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),



        PageViewModel(
          title: "Ontdek het Sprookjesbos",
          body: 'Welkom in het Sprookjesbos',
          image: Container(
            padding: const EdgeInsets.only(top: 150),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  100), // Aangepaste waarde voor de mate van afgeronde hoeken
              child: Image.asset(
                'assets/images/qr_code.jpg',
                height: 200,
              ),
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,

      controlsPosition: const Position(left: 0, right: 0, top: 40, bottom: 0),
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(12.5, 12.5),
        color: Color(0xFFBDBDBD),
        activeSize: Size(15.0, 15.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

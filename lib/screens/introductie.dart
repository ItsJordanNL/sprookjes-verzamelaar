import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sprookjesverzamelaar/screens/home.dart';
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
      MaterialPageRoute(builder: (_) => const Home()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/images/paperbackground.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/intro/intro1.jpg', width: width);
  }

  Widget _buildCircularImage(String assetName, [double size = 200]) {
    return ClipOval(
      child: Image.asset(
        'assets/images/intro/$assetName',
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
      bodyFlex: 6,
      imageFlex: 5,
      safeArea: 10,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      pages: [
        PageViewModel(
          title: "Welkom in het Sprookjesbos",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildCircularImage('intro1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: _buildCircularImage('intro1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body:
              "Kids and teens can track their stocks 24/7 and place trades that you approve.",
          image: _buildCircularImage('intro1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Another title page",
          body: "Another beautiful body text for this example onboarding",
          image: _buildCircularImage('intro1.jpg'),
          footer: Container(
            width: double.infinity, // Neem de volledige breedte van het scherm
            padding: const EdgeInsets.symmetric(
                horizontal: 100.0), // Voeg padding toe aan de zijkanten
            child: ElevatedButton(
              onPressed: () {
                _onIntroEnd(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),// Stel de minimumgrootte van de knop in
              ),
              child: const Text(
                'FooButton',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 5,
            imageFlex: 5,
            safeArea: 10,
          ),
        ),

      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      showNextButton: false,
      // skipOrBackFlex: 0,
      // nextFlex: 0,
      showDoneButton: false,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Color(0xFFBDBDBD),
        activeSize: Size(12.0, 12.0),
        activeColor: primary,
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

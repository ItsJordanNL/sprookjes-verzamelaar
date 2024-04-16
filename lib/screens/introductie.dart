import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sprookjesverzamelaar/screens/home.dart';
import '../components/constants.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key});

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

  Widget _buildCircularImage(String assetName, [double size = 200]) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: primary, // Kleur van de border
          width: 5.0, // Breedte van de border
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/intro/$assetName',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 18.0,
    );

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor:
          Colors.transparent, // Maak de achtergrond van de pagina transparant
      imagePadding: EdgeInsets.zero,
      bodyFlex: 6,
      imageFlex: 5,
      safeArea: 10,
    );

    return Stack(
      // Plaats een Stack zodat je elementen kunt overlappen
      children: [
        Container(
          // Achtergrondcontainer
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/paperbackground.jpg'), // Achtergrondafbeelding
              fit: BoxFit.cover,
            ),
          ),
        ),
        IntroductionScreen(
          key: introKey,
          globalBackgroundColor: Colors
              .transparent, // Maak de achtergrond van de introductiescherm transparant
          allowImplicitScrolling: true,
          pages: [
            PageViewModel(
              title: "Ontdek het Sprookjesbos",
              body:
                  "Ga op zoek naar alle sprookjes die te vinden zijn in het bos!",
              image: _buildCircularImage('intro1.jpg'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Scan het sprookje",
              body:
                  """Scan met je Twinkeltoorts de NFC tag voor een magische interactie!

            Hiermee verzamel je ook meteen het sprookje voor in je verzamel app!""",
              image: _buildCircularImage('intro2.jpg'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Beantwoord quizvragen",
              body: """Spaar dukaten door de Quizvragen juist te beantwoorden!

            Met deze dukaten kun je namelijk kleurplaten kopen binnen de app.""",
              image: _buildCircularImage('intro3.png'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Gevoelige content",
              body:
                  """In deze app kan sommige content als aanstootgevend worden ervaren.

            Mocht u bepaalde filters willen toepassen, kunt u deze zelf aanvinken in [Instellingen].""",
              image: _buildCircularImage('intro4.png'),
              footer: Container(
                width:
                    double.infinity, // Neem de volledige breedte van het scherm
                padding: const EdgeInsets.symmetric(
                    horizontal: 70.0), // Voeg padding toe aan de zijkanten
                child: ElevatedButton(
                  onPressed: () {
                    _onIntroEnd(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Start met Verzamelen',
                    style: TextStyle(color: Colors.white, fontSize: 18),
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
          onSkip: () =>
              _onIntroEnd(context), // You can override onSkip callback
          showSkipButton: false,
          showNextButton: false,
          // skipOrBackFlex: 0,
          // nextFlex: 0,
          showDoneButton: false,
          showBackButton: false,
          //rtl: true, // Display as right-to-left
          back: const Icon(Icons.arrow_back),
          skip:
              const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
          next: const Icon(Icons.arrow_forward),
          done:
              const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
          curve: Curves.fastLinearToSlowEaseIn,
          // controlsPosition:
          //     const Position(bottom: 0, left: 0, right: 0, top: 700),
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
        ),
      ],
    );
  }
}

import "package:flutter/material.dart";
import "../components/sprookjes.dart";

// ignore: must_be_immutable
class Verhaal extends StatelessWidget {
  Verhaal({super.key, required this.selectedIndex});

  final int selectedIndex;

  List<Sprookjes> sprookje = [];

  void _getInitialInfo() {
    sprookje = Sprookjes.getSprookje();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      body: Stack(
        children: [
          _backgroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _imageSection(),
              const SizedBox(height: 20),
              // Voeg hier andere widgets toe voor de inhoud van de pagina
            ],
          ),
        ],
      ),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/paperbackground.jpg'), // Vervang 'background_image.jpg' door het pad naar jouw achtergrondafbeelding
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding _imageSection() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          sprookje[selectedIndex].image,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        sprookje.length > selectedIndex
            ? sprookje[selectedIndex].title
            : 'Geen titel beschikbaar',
      ),
      centerTitle: true,
    );
  }
}

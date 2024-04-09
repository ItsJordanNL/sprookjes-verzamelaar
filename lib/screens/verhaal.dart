import "package:flutter/material.dart";
import "../components/sprookjes.dart";

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
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
       _imageSection(),
       const SizedBox(height:20),
       

      
      ],)
    );
  }

  Padding _imageSection() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Pas hier de gewenste border-radius-waarde aan
        child: Image.asset(
          sprookje[selectedIndex].image,
          width: double.infinity, 
          height:200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        sprookje.length > selectedIndex
            ? sprookje[selectedIndex].title
            : 'Geen titel beschikbaar',
      ),
      centerTitle: true,
    );
  }
}

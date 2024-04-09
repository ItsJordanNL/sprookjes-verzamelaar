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
        appBar: AppBar(
      title: Text(
        sprookje.length > selectedIndex
            ? sprookje[selectedIndex].title
            : 'Geen titel beschikbaar',
      ),
      centerTitle: true,
      
    ));
  }
}

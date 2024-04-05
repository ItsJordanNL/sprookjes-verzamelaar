import 'package:flutter/material.dart';
import '../navigation_bar.dart';

class Instellingen extends StatefulWidget {
  const Instellingen({super.key});

  @override
  State<Instellingen> createState() => _HomeState();
}

class _HomeState extends State<Instellingen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 16.0),
        ),
      ),
      body: const Text(
        "settings",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

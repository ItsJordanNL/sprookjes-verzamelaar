import 'package:flutter/material.dart';

class Verzameling extends StatefulWidget {
  const Verzameling({super.key});

  @override
  State<Verzameling> createState() => _HomeState();
}

class _HomeState extends State<Verzameling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 16.0),
        ),
      ),
      body: const SingleChildScrollView(
        child: Text(
          " Hello world!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

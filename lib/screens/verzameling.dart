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
        centerTitle: true,
        title: const Text(
          'Verzameling',
          style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 20.0),
        ),
        backgroundColor: const Color(0xFFAC1A2F),
        foregroundColor: Colors.white,
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

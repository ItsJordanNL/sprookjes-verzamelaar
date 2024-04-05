import 'package:flutter/material.dart';
import '../navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          "Hello world!",
          style: TextStyle(fontSize: 24),
        ),
        bottomNavigationBar: BottomNavigation(),
      );
  }
}

import "package:flutter/material.dart";

class Verhaal extends StatefulWidget {
  const Verhaal({super.key});

  @override
  State<Verhaal> createState() => _VerhaalState();
}

class _VerhaalState extends State<Verhaal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doornroosje"),
      ),
    );
  }
}
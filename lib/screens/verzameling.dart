import 'package:flutter/material.dart';
import '../components/constants.dart';

class Verzameling extends StatefulWidget {
  const Verzameling({super.key});

  @override
  State<Verzameling> createState() => _HomeState();
}

class _HomeState extends State<Verzameling> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
              preferredSize:
                  const Size.fromHeight(95), // here the desired height
              child: AppBar(
                toolbarHeight: 95, // Set this height
                centerTitle: true,
                title: Container(
                  margin: const EdgeInsets.only(
                      top: 40), // Adjust the bottom margin as needed
                  child: const Text(
                    'Verzameling',
                    style: TextStyle(fontFamily: 'Roboto Slab', fontSize: 26),
                  ),
                ),
                backgroundColor: darkred,
                foregroundColor: Colors.white,
              )),
          body: const SingleChildScrollView(
            child: Text(
              " Hello world!",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ));
  }
}

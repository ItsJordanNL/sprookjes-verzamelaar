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
                  const Size.fromHeight(90), // here the desired height
              child: AppBar(
                toolbarHeight: 90, // Set this height
                centerTitle: true,
                title: Container(
                  margin: const EdgeInsets.only(
                      top: 40), // Adjust the bottom margin as needed
                  child: const Text(
                    'Verzameling',
                    style:
                        TextStyle(fontFamily: 'Pretaporter Slab', fontSize: 30),
                  ),
                ),
                backgroundColor: darkred,
                foregroundColor: textcolor,
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

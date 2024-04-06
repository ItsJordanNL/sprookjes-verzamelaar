import 'package:flutter/material.dart';
import '../components/constants.dart';

class Verzameling extends StatefulWidget {
  const Verzameling({Key? key}) : super(key: key);

  @override
  State<Verzameling> createState() => _VerzamelingState();
}

class _VerzamelingState extends State<Verzameling> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(85), // here the desired height
          child: AppBar(
            toolbarHeight: 85, // Set this height
            centerTitle: true,
            title: Container(
              margin: const EdgeInsets.only(top: 40), // Adjust the bottom margin as needed
              child: const Text(
                'Verzameling',
                style: TextStyle(fontFamily: 'Pretaporter Slab', fontSize: 30),
              ),
            ),
            backgroundColor: darkred,
            foregroundColor: textcolor,
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/achtergrond.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(30, (index) {
              // Assuming you have image assets named 'sprookje1.jpg', 'sprookje2.jpg', ..., 'sprookje30.jpg' in a folder named 'sprookjes'
              return Image.asset(
                'assets/images/sprookjes/sprookje${index + 1}.jpg',
                fit: BoxFit.cover,
              );
            }),
          ),
        ),
      ),
    );
  }
}

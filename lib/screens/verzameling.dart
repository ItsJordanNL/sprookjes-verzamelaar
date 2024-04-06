import 'package:flutter/material.dart';
import '../components/constants.dart';

class Verzameling extends StatefulWidget {
  const Verzameling({Key? key}) : super(key: key);

  @override
  State<Verzameling> createState() => _VerzamelingState();
}

class _VerzamelingState extends State<Verzameling> {
  List<bool> imageClickedList = List.generate(30, (index) => false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(85),
          child: AppBar(
            toolbarHeight: 85,
            centerTitle: true,
            title: Container(
              margin: const EdgeInsets.only(top: 40),
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
            padding: const EdgeInsets.all(15),
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1, // Adjust the aspect ratio to maintain circular shapes
            children: List.generate(30, (index) {
              // Assuming you have image assets named 'sprookje1.jpg', 'sprookje2.jpg', ..., 'sprookje30.jpg' in a folder named 'sprookjes'
              return GestureDetector(
                onTap: () {
                  setState(() {
                    imageClickedList[index] = !imageClickedList[index];
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99999),
                    border: Border.all(color: textcolor, width: 5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(99999),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/images/sprookjes/sprookje${index + 1}.jpg',
                          fit: BoxFit.cover,
                        ),
                        if (!imageClickedList[index])
                          Container(
                            color: Colors.grey.withOpacity(0.8), // Gray overlay
                          ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

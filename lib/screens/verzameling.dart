import 'package:flutter/material.dart';
import 'verhaal.dart';
import '../components/constants.dart';

class Verzameling extends StatefulWidget {
  const Verzameling({super.key});

  @override
  State<Verzameling> createState() => _VerzamelingState();
}

class _VerzamelingState extends State<Verzameling> {
  List<bool> imageClickedList = List.generate(30, (index) => false);
  int collectedCount = 0; // Initial collected count
  bool _popupShown = false; // Track if the popup is already shown

  @override
  Widget build(BuildContext context) {
    double progress = collectedCount / 30;

    if (progress == 1.0 && !_popupShown) {
      _popupShown = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showPopup(context, progress);
      });
    }

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
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/achtergrond.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 55, right: 15, bottom: 15, left: 15),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio:
                      1, // Adjust the aspect ratio to maintain circular shapes
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(30, (index) {
  // Assuming you have image assets named 'sprookje1.jpg', 'sprookje2.jpg', ..., 'sprookje30.jpg' in a folder named 'sprookjes'
  return GestureDetector(
    onTap: () {
      setState(() {
        if (imageClickedList[index]) {
          // If the image is already clicked, navigate to the 'sprookje.dart' page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Verhaal()), // Navigate to 'sprookje.dart'
          );
        } else {
          // If the image is not clicked, toggle the click state
          imageClickedList[index] = !imageClickedList[index];
          // Update collectedCount based on clicked images
          collectedCount = imageClickedList
              .where((clicked) => clicked)
              .length;
        }
      });
    },
    child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
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
                    color: Colors.grey
                        .withOpacity(0.8), // Gray overlay
                  ),
              ],
            ),
          ),
        ),
        // Lock icon
        Visibility(
          visible: !imageClickedList[index], // Show only if the image is not clicked
          child: const Icon(
            Icons.lock,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    ),
  );
}),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10,
                    right: 40,
                    left: 15), // Margin of 15 from all sides
                child: GestureDetector(
                  onTap: () {
                    _showPopup(context,
                        progress); // Pass the 'progress' variable as an argument
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '$collectedCount/30 sprookjes verzameld voor badge',
                        style: TextStyle(
                            color: textcolor.withOpacity(0.8), fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _showPopup(context,
                                progress); // Pass the 'progress' variable as an argument
                          },
                          child: LinearProgressIndicator(
                            value: progress, // Set progress value
                            backgroundColor: textcolor.withOpacity(0.8),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              progress == 1.0
                                  ? darkred.withOpacity(0.8)
                                  : darkred.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15,
              right: 7.5, // Position the icon at the end of the progress bar
              child: Icon(
                Icons.local_police_outlined,
                color: progress == 1.0
                    ? darkred.withOpacity(0.8)
                    : textcolor.withOpacity(0.8),
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPopup(BuildContext context, double progress) {
    String title;
    String imagePath;
    String contentText;

    if (progress == 1.0) {
      title = 'Alle sprookjes verzameld';
      imagePath =
          'assets/images/qr_code.jpg'; // Change to completed image asset path
      contentText =
          'Als beloning kan je nu jouw medaille gaan halen bij de Efteling cadeauwinkel. Laat een medewerker deze QR-Code scannen en ontvang jouw beloning!';
    } else {
      title = 'Kom hier later terug';
      imagePath = 'assets/images/qr_code_blurred.jpg'; // Default image asset path
      contentText =
          'Wanneer je meer sprookjes hebt verzameld kun je hier terugkomen om de QR-Code te laten scannen door een Efteling medewerker, en de badge te innen bij de Efteling giftshop.';
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: textcolor, // Set background color to textcolor
          surfaceTintColor: Colors.transparent,
          title: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'Pretaporter Slab', // Set your custom font family
                fontSize: 24, // Set your custom font size
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                width: 200, // Adjust width as needed
                height: 200, // Adjust height as needed
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Text(contentText),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

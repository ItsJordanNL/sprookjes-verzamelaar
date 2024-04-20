import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TestNFC());
}

class TestNFC extends StatefulWidget {
  const TestNFC({superkey});

  @override
  TestNFCState createState() => TestNFCState();
}

class TestNFCState extends State<TestNFC> {
  late bool isNfcAvailable;

  @override
  void initState() {
    super.initState();
    checkNfcAvailability();
  }

  Future<void> checkNfcAvailability() async {
    final available = await NfcManager.instance.isAvailable();
    setState(() {
      isNfcAvailable = available;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
        title: const Text('NFC Reader'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _startNFCReading,
          child: const Text('Start NFC Reading'),
        ),
      ),
    ),
    );
  }
  void _startNFCReading() async {
    try {
      bool isAvailable = await NfcManager.instance.isAvailable();

      //We first check if NFC is available on the device.
      if (isAvailable) {
      //If NFC is available, start an NFC session and listen for NFC tags to be discovered.
        NfcManager.instance.startSession(
          onDiscovered: (NfcTag tag) async {
            // Process NFC tag, When an NFC tag is discovered, print its data to the console.
            debugPrint('NFC Tag Detected: ${tag.data}');
          },
        );
      } else {
        debugPrint('NFC not available.');
      }
    } catch (e) {
      debugPrint('Error reading NFC: $e');
    }
  }
}

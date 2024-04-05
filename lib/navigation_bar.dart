import 'package:flutter/material.dart';
import './screens/verzameling.dart'; // Importeer de verzameling.dart
import 'screens/instellingen.dart';
import './screens/kleurplaten.dart'; 

/// Importeer de settings.dart

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex,
        children: [
          Verzameling(), // Widget voor de "Home" bestemming
          Kleurplaten(), // Widget voor de "Profile" bestemming
          Instellingen(), // Widget voor de "Settings" bestemming
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Kleurplaten'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}

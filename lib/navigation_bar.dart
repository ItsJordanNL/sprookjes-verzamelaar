import 'package:flutter/material.dart';
import './screens/verzameling.dart';
import './screens/instellingen.dart';
import './screens/kleurplaten.dart';
import './components/constants.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

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
        children: const [
          Verzameling(), // Widget for the "Home" destination
          Kleurplaten(), // Widget for the "Profile" destination
          Instellingen(), // Widget for the "Settings" destination
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined, color: textcolor),
            activeIcon: Icon(Icons.book), // Icon filled when active
            label: 'Verzameling',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.palette_outlined, color: textcolor),
            activeIcon: Icon(Icons.palette), // Icon filled when active
            label: 'Kleurplaten',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined, color: textcolor),
            activeIcon: Icon(Icons.settings), // Icon filled when active
            label: 'Instellingen',
          ),
        ],
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: darkred,
        unselectedItemColor: textcolor
            .withOpacity(0.75), // Set unselected item color to a lighter shade
        selectedItemColor: textcolor, // Set selected item color to white
        unselectedIconTheme: const IconThemeData(
        color: textcolor), // Set the theme for selected icons
      ),
    );
  }
}

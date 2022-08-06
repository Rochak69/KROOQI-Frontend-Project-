import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';
import '../constants/theme.dart';
import '../screens/dashboard_screens/dashboard_screen.dart';

class BottomNavBar extends StatefulWidget {
  static const name = '1';

  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // PackagesScreen? obj;

  int _selectedIndex = 0;
  // _BottomNavBarState(int index) {
  //   _selectedIndex = index;
  // }
  @override
  Widget build(BuildContext context) {
    // final screens = [DashBoard(), PackagesScreen()];

    return BottomNavigationBar(
        backgroundColor: kColorAccent,
        selectedItemColor: kColorPrimary,
        selectedIconTheme: const IconThemeData(color: kColorPrimary),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: "Home",
              backgroundColor: kColorAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.backpack_outlined, color: Colors.black),
            backgroundColor: kColorAccent,
            label: "Packages",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined, color: Colors.black),
              backgroundColor: kColorAccent,
              label: "Enquries"),
          BottomNavigationBarItem(
              icon: Icon(Icons.house_outlined, color: Colors.black),
              backgroundColor: kColorAccent,
              label: "Properties"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt, color: Colors.black),
              backgroundColor: kColorAccent,
              label: "Agent"),
        ]);
  }

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    debugPrint("selected index value: $_selectedIndex original index: $index");

    if (index == 0) {
      Navigator.pushNamed(context, DashBoard.name);
    } else if (index == 1) {
      Navigator.pushNamed(context, PackagesScreen.name);
    } else if (index == 2) {
      Navigator.pushNamed(context, EnquriesScreen.name);
    } else if (index == 3) {
      Navigator.pushNamed(context, PropertiesScreen.name);
    } else if (index == 4) {
      Navigator.pushNamed(context, AgentScreen.name);
    }
  }
}

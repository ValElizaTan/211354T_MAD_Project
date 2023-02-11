import 'package:flutter/material.dart';
//Class
import 'model.dart';

//Files
import 'homepage.dart';
import 'profilepage.dart';
import 'bus.dart';
import 'registerpage.dart';
import 'aboutus.dart';
import 'alert.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final screens = [
    RegisterPage(),
    BusPage(),
    HomePage(),
    AlertPage(),
    AboutUsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: ('Account'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            label: ('Bus'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bus_alert),
            label: ('Alert'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: ('About'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Colors.cyan[700],
        iconSize: 40,
        onTap: (index) => setState(() => currentIndex = index),
        elevation: 5,
        backgroundColor: Colors.grey[350],
        unselectedIconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }
}

import 'package:untitled/Bag.dart';
import 'package:untitled/Fav.dart';
import 'package:untitled/Home.dart';
import 'package:untitled/Profile.dart';
import 'package:untitled/Shop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;

  final List<Widget> _pages = [
  Home(),
    Shop(),
    Bag(),
    Fav(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
            backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Shop",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: "Bag"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorites"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"),
          ],
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}

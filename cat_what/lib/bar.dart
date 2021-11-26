import 'package:cat_what/OLD/contentFull.dart';
import 'package:cat_what/pages/content_page.dart';
import 'package:flutter/material.dart';
import 'package:cat_what/start.dart';

void main() {
  runApp(Bar());
}

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  _Bar createState() => _Bar();
}

class _Bar extends State<Bar> {
  int _selectedItemIndex = 2;
  final List pages = [
    null,
    ContentPage(),
    CatPage(),
    null,
    null,
  ];

  get index => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.tealAccent[700],
            currentIndex: _selectedItemIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              setState(() {
                _selectedItemIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.pets),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.auto_awesome_rounded),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.home_filled),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.dashboard_customize_rounded),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.help),
              ),
            ],
          ),
          body: pages[_selectedItemIndex]),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_fist_project_gsg/save_screen.dart';
import 'package:flutter_fist_project_gsg/shope_screen.dart';

import 'faviraute_screen.dart';
import 'home_screen.dart';
import 'menu_screen.dart';
import 'model/bn_screen.dart';
class MainScreen extends StatefulWidget {
   MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<BnScreen> _bnScreen = <BnScreen>[
    const BnScreen(widget: HomeScreen()),
    const BnScreen(widget: FavouriteScreen()),
    const BnScreen(widget: ShopeScreen()),
    const BnScreen(widget: SaveScreen()),
    const BnScreen(widget: MenuScreen()),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bnScreen[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        mouseCursor: MouseCursor.defer,
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });

        },
        currentIndex: _currentIndex,
        selectedItemColor:  Colors.orange,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "Home ",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_border_outlined),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.local_grocery_store),
            icon: Icon(Icons.local_grocery_store_outlined),
            label: "Shope ",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.save),
            icon: Icon(Icons.save_outlined),
            label: "Save ",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.menu),
            icon: Icon(Icons.menu_outlined),
            label: "Menu ",
          ),
        ],
      ),
    );
  }
}
